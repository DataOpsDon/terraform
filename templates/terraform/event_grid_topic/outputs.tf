output "endpoint" {
  value = azurerm_eventgrid_topic.main.endpoint
}

output "key" {
  value = azurerm_eventgrid_topic.main.primary_access_key
}

output "name" {
  value = azurerm_eventgrid_topic.main.name
}

output "id" {
  value = azurerm_eventgrid_topic.main.id
}