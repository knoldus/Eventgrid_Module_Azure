output "topic_id" {
  value = azurerm_eventgrid_topic.egtopic.id
}

output "topic_endpoint" {
  value = azurerm_eventgrid_topic.egtopic.endpoint
}