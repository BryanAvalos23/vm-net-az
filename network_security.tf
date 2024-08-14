# resource "azurerm_network_security_group" "security_prueba" {
#   name                = "security_prueba_one"
#   resource_group_name = azurerm_resource_group.prueba.name
#   location            = azurerm_resource_group.prueba.location

#   # 
#   security_rule = {
#     name                       = "HTTP"
#     priority                   = 100
#     direction                  = "Inbound"
#     access                     = "Allow"
#     protocol                   = "Tcp"
#     source_port_range          = "*"
#     destination_port_range     = "80"
#     source_address_prefix      = "*"
#     destination_address_prefix = "*"
#   }

#   security_rule = {
#     name     = "HTTPS"
#     priority = 101
#     direction = "Inbound"
#     access = "Allow"
#     protocol = "Tcp"
#     source_port_range = "*"
#     destination_port_range = "443"
#     source_address_prefix = "*"
#     destination_address_prefix = "*"
#   }

# }
