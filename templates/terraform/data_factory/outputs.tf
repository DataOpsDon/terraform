
output "name" {
  value = azurerm_data_factory.main.name
}
output "id" {
  value = azurerm_data_factory.main.id
}
output "principal_id" {
  value = azurerm_data_factory.main.identity[0].principal_id
}
