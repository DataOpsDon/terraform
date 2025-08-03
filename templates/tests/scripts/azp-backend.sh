#!/usr/bin/bash
set -e

#
# Shell Script
# - Terraform Create or Update Azure Backend Storage
#

#echo "==> Setting active Subscription..."
az account set \
    --subscription "$SUBSCRIPTION_ID"
#az account list \
#    --query "[?isDefault]"
#
echo "==> Create or update Resource Group..."
RSG_NAME="$DEFAULT_PREFIX"
#
# Set STORAGE_ACCOUNT_RSG_NAME to an output variable for downstream consumption.
echo "##vso[task.setVariable variable=STORAGE_ACCOUNT_RSG_NAME;isOutput=true]$RSG_NAME"

az storage account create \
    --name "$SA_NAME" \
    --resource-group "$RSG_NAME" \
    --location "$PRIMARY_LOCATION" \
    --sku Standard_LRS \
    --encryption-services blob \
    --query 'name' \
    --out tsv

echo "==> Create or update Storage Account container..."
az storage container create \
    --name "$SC_NAME" \
    --account-name "$SA_NAME" \
    --query 'created' \
    --out tsv
##
### Set STORAGE_CONTAINER_NAME to an output variable for downstream consumption.
echo "##vso[task.setVariable variable=STORAGE_CONTAINER_NAME;isOutput=true]$SC_NAME"
##