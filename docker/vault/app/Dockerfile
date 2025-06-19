FROM alpine:3.18

# Install curl, jq, and Vault CLI
RUN apk add --no-cache curl jq bash

# Install Vault CLI (matching Vault server version)
RUN wget https://releases.hashicorp.com/vault/1.16.0/vault_1.16.0_linux_amd64.zip -O /tmp/vault.zip \
    && unzip /tmp/vault.zip -d /usr/local/bin/ \
    && rm /tmp/vault.zip

WORKDIR /app
COPY app.sh /app.sh
RUN chmod +x /app.sh
