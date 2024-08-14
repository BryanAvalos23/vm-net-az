resource "azurerm_virtual_machine" "pruebavm" {
  name                  = "pruebavm"
  location              = azurerm_resource_group.prueba.location
  resource_group_name   = azurerm_resource_group.prueba.name
  network_interface_ids = [azurerm_network_interface.interface_one.id]
  vm_size               = "Standard_B1s"
  # 
  storage_os_disk {
    name              = "os"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  # 
  storage_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
  # 
  os_profile {
    computer_name  = "bryan"
    admin_username = "Bryan"
    admin_password = "Bryanserver123@"
  }
  # 
  os_profile_linux_config {
    disable_password_authentication = false
  }
  # 
  tags = var.tags
}
