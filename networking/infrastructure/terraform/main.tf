module "resource_group" {
  source  = "Azure/avm-res-resources-resourcegroup/azurerm"
  version = "0.2.1"
  name = "rg-${var.environment}-${var.location}-001"
  location = var.location
}