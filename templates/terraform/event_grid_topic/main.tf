resource "azurerm_eventgrid_topic" "main" {
  name                          = var.name
  location                      = var.location
  public_network_access_enabled = var.deploy_secure_networking ? false : true
  resource_group_name           = var.resource_group_name
  tags                          = var.tags
  lifecycle {
    ignore_changes = [
      tags
    ]
  }
}
