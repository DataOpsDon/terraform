TF_WORKSPACE="$PIPELINE_WORKSPACE"
ENVIRONMENT="$PIPELINE_ENVIRONMENT"
VARIABLES="$PIPELINE_VARIABLES"

echo "==> Switching directories..."
cd "$TF_WORKSPACE" || exit

echo "==> Applying infrastructure..."
TF_APPLY_ATTEMPTS=1
TF_EXIT_CODE=1
while [ $TF_APPLY_ATTEMPTS -lt 3 ] && [ $TF_EXIT_CODE -ne 0 ]; do
  echo "==> Attempt $TF_APPLY_ATTEMPTS"
  
  if [ -z "$VARIABLES" ]; then
    terraform apply \
      -auto-approve \
      -var-file="$TF_WORKSPACE/$ENVIRONMENT.tfvars"
  else
    terraform apply \
      -auto-approve \
      -var-file="$TF_WORKSPACE/$ENVIRONMENT.tfvars" \
      -var "$VARIABLES"
  fi

  TF_EXIT_CODE=$?
  TF_APPLY_ATTEMPTS=$((TF_APPLY_ATTEMPTS + 1))
  echo "==> Terraform apply exit code: $TF_EXIT_CODE. Attempt $TF_APPLY_ATTEMPTS"
done