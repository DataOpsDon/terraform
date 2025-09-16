//Set the required version of AzureRM to be used.
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
    alz = {
      source  = "Azure/alz"
      version = "0.18.0"
    }
  }
  backend "azurerm" {}
}
provider "azurerm" {
  features {}
  use_oidc        = true
  subscription_id = var.subscription_id
}
provider "alz" {
  library_overwrite_enabled = true
  library_references = [
    {
      path = "platform/alz"
      ref  = "2025.09.0"
    },
    {
      custom_url = "${path.root}/lib"
    }
  ]
}

