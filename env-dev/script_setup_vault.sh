#/bin/bash

## Generate Credentials to connect to Kubernetes
echo Generating kubectl credentials...
aws eks --region $(terraform output -raw region) update-kubeconfig --name $(terraform output -raw cluster_id)

## Add Hashicorp to Helm as Source
echo Adding Hashicorp to HELM repositories...
helm repo add hashicorp https://helm.releases.hashicorp.com

## Install Vault using HELM
echo Installing Vault on Kubernetes with HELM...
helm install vault hashicorp/vault -f vault_config.yml

## Wait 60 seconds until Vault is up and running to init and unseal
echo Waiting 180 seconds until Hashicorp Vault starts on Kubernetes...
sleep 180

## Init vault saving the Keys and Root Token
echo Initializing Hashicorp Vault...
kubectl exec vault-0 -- vault operator init -format json > keys_token.json

## Echoing your Vault root Token
ROOT_TOKEN=$(cat keys_token.json | jq -r '.root_token')
echo Your root token is: $ROOT_TOKEN