#!/bin/bash

# Assuming role using AWS STS
ROLE_OUTPUT=$(aws sts assume-role \
  --role-arn "<role-arn>" \
  --no-verify-ssl \
  --role-session-name ("<session-name>")

# Extracting values from the JSON response
AWS_ACCESS_KEY_ID=$(echo $ROLE_OUTPUT | jq -r '.Credentials.AccessKeyId')
AWS_SECRET_ACCESS_KEY=$(echo $ROLE_OUTPUT | jq -r '.Credentials.SecretAccessKey')
AWS_SESSION_TOKEN=$(echo $ROLE_OUTPUT | jq -r '.Credentials.SessionToken')

# Exporting the values as environment variables
export AWS_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY
export AWS_SESSION_TOKEN

# Optional: Echo the variables to verify
echo "AWS_ACCESS_KEY_ID: $AWS_ACCESS_KEY_ID"
echo "AWS_SECRET_ACCESS_KEY: $AWS_SECRET_ACCESS_KEY"
echo "AWS_SESSION_TOKEN: $AWS_SESSION_TOKEN"

export VAULT_ADDR=<vault-url>
export VAULT_NAMESPACE=aws/<namespace>
vault_token=$(vault login -method=aws role=<iam-role>)
echo "$vault_token"
