//Set the required version of AzureRM to be used.
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
  backend "azurerm" {
    use_azuread_auth = true
  }
}
provider "azurerm" {
  features {}
  use_oidc        = true
  subscription_id = var.subscription_id
}
