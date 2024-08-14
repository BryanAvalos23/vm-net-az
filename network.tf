resource "azurerm_virtual_network" "network_prueba" {
  name                = "network_prueba_uno"
  location            = azurerm_resource_group.prueba.location
  address_space       = ["10.0.0.0/16"]
  resource_group_name = azurerm_resource_group.prueba.name
  tags                = var.tags

  depends_on = [azurerm_resource_group.prueba]
}

resource "azurerm_subnet" "subnet_one" {
  name                 = "subnet_one_prueba_uno"
  address_prefixes     = ["10.0.1.0/24"]
  virtual_network_name = azurerm_virtual_network.network_prueba.name
  resource_group_name  = azurerm_resource_group.prueba.name
}

resource "azurerm_network_interface" "interface_one" {
  name                = "network_interface_prueba_one"
  location            = azurerm_resource_group.prueba.location
  resource_group_name = azurerm_resource_group.prueba.name
  # configuracion ip
  ip_configuration {
    name                          = "interla_ip"
    subnet_id                     = azurerm_subnet.subnet_one.id
    private_ip_address_allocation = "Dynamic"
  }

  tags = var.tags
}
