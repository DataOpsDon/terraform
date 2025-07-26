#!/usr/bin/bash
set -e

#
# Shell Script
# - Terraform Initialize
#

TF_WORKSPACE="$PIPELINE_WORKSPACE"
TFSTATE_FILE=$TFSTATE_FILE
STORAGE_ACCOUNT_NAME=$STORAGE_ACCOUNT_NAME
CONTAINER_NAME=$CONTAINER_NAME
STORAGE_ACCOUNT_RSG_NAME=$STORAGE_ACCOUNT_RSG_NAME
SUBSCRIPTION_ID=$SUBSCRIPTION_ID
echo "==> Switching directories..."
cd "$TF_WORKSPACE"

echo "==> Initializaing Terraform workspace..."
terraform init \
-backend-config="storage_account_name=$STORAGE_ACCOUNT_NAME" \
-backend-config="container_name=$CONTAINER_NAME" \
-backend-config="key=$TFSTATE_FILE" \
-backend-config="resource_group_name=$STORAGE_ACCOUNT_RSG_NAME" \
-backend-config="subscription_id=$SUBSCRIPTION_ID"