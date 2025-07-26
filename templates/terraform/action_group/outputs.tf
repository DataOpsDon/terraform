output "id" {
  value       = azurerm_monitor_action_group.main.id
  description = "Obtain the Resource Id of the action group"
}

output "name" {
  value       = azurerm_monitor_action_group.main.name
  description = "Obtain the name of the action group"
}
