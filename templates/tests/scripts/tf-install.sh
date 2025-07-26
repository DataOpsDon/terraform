#!/usr/bin/bash
set -e

#
# Shell Script
# - Terraform Install
#
WORK_DIR=$(pwd)

echo "==> Creating directory..."
mkdir -p "$WORK_DIR/terraform"

echo "==> Downloading archive..."
wget 'https://releases.hashicorp.com/terraform/1.9.7/terraform_1.9.7_linux_amd64.zip' -P /tmp

# Unzip the Terraform binary to the working directory
echo "==> Unzipping Terraform binary..."
unzip '/tmp/terraform_1.9.7_linux_amd64.zip' -d "$WORK_DIR/terraform"

# Move the Terraform binary to a directory in the PATH
echo "==> Moving Terraform binary to /usr/local/bin..."
sudo mv "$WORK_DIR/terraform/terraform" /usr/local/bin/

echo "==> Terraform installation completed."
