#!/bin/sh
set -e

echo "Waiting for Vault to be available..."

# Wait until Vault API is responding
until curl -s ${VAULT_ADDR}/v1/sys/health | grep -q '"initialized":true'; do
  echo "Vault not ready yet..."
  sleep 2
done

echo "Vault is initialized and ready."

# Try reading a secret (we'll create one on the fly)
echo "Writing secret to Vault..."
vault kv put secret/myapp password="swordfish"

echo "Reading secret from Vault..."
SECRET=$(vault kv get -format=json secret/myapp | jq -r '.data.data.password')

echo "Retrieved secret from Vault: $SECRET"

echo "Demo finished. Sleeping indefinitely..."
sleep infinity
