resource "azurerm_eventgrid_topic" "egtopic" {
  name                = var.topic_name
  location            = var.location
  resource_group_name = var.resource_group_name

  identity {
    type = var.identity_type == "user_assigned" ? "UserAssigned" : "SystemAssigned" 
  }
}
