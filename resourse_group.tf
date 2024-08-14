resource "azurerm_resource_group" "prueba" {
  name     = "prueba"
  location = "West US"

  tags = var.tags
}
