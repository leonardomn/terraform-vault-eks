#/bin/bash

## Unseal Vault in case of KMS is down
echo Unsealing vault for the first time...
KEY1=$(cat keys_token.json | jq -r '.recovery_keys_b64[0]')
kubectl exec vault-0 -- vault operator unseal $KEY1
KEY2=$(cat keys_token.json | jq -r '.recovery_keys_b64[1]')
kubectl exec vault-0 -- vault operator unseal $KEY2
KEY3=$(cat keys_token.json | jq -r '.recovery_keys_b64[2]')
kubectl exec vault-0 -- vault operator unseal $KEY3
