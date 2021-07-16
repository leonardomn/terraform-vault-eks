#/bin/bash

ROOT_TOKEN=$(cat keys_token.json | jq -r '.root_token')

## Creating Dynamic Credentials
kubectl exec vault-0 -- vault login $ROOT_TOKEN
kubectl exec vault-0 -- vault secrets enable -path=aws aws
kubectl exec vault-0 -- vault write aws/config/root access_key=REPLACE_HERE secret_key=REPLACE_HERE region=us-west-2
kubectl cp script_dynamic_cred_aws_role.json default/vault-0:/vault
kubectl exec vault-0 -- vault write aws/roles/role credential_type=iam_user policy_document=@/vault/script_dynamic_cred_aws_role.json
kubectl exec vault-0 -- vault read aws/creds/role