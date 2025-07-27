//Set the required version of AzureRM to be used.
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
  backend "azurerm"{}
}
provider "azurerm" {
  features {}
  use_oidc        = true
  subscription_id = var.subscription_id
}
