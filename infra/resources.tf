resource "azurerm_resource_group" "seriousBusiness" {
  location = local.location
  name = local.resource_group_name
}