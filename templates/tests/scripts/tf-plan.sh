#!/usr/bin/bash
set -e

#
# Shell Script
# - Terraform Plan
#
TF_WORKSPACE="$PIPELINE_WORKSPACE"
ENVIRONMENT="$PIPELINE_ENVIRONMENT"
VARIABLES="$PIPELINE_VARIABLES"
echo "==> Switching directories..."
cd "$TF_WORKSPACE"

if [ -z "$VARIABLES" ]; then
  terraform plan -var-file="$TF_WORKSPACE/$ENVIRONMENT.tfvars" -out=plan
else
  terraform plan -var-file="$TF_WORKSPACE/$ENVIRONMENT.tfvars" -var $VARIABLES -out=plan
fi