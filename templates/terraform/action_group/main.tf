resource "azurerm_monitor_action_group" "main" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  short_name          = var.short_name
  tags                = var.tags
  dynamic "email_receiver" {
    for_each = var.email_receivers
    content {
      name          = email_receiver.value.name
      email_address = email_receiver.value.email_address
    }
  }
} 