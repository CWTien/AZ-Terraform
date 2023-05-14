# Create first virtual machine
resource "azurerm_windows_virtual_machine" "Test-Chase-VM1" {
  name                = "Test-Chase-VM1"
  resource_group_name   = azurerm_resource_group.Test_Chase_RG.name
  location              = azurerm_resource_group.Test_Chase_RG.location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  admin_password      = "P@$$w0rd1234!"
  network_interface_ids = [azurerm_network_interface.Test_Chase-nic-1.id]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}


# Create second virtual machine
resource "azurerm_windows_virtual_machine" "Test-Chase-VM2" {
  name                = "Test-Chase-VM2"
  resource_group_name   = azurerm_resource_group.Test_Chase_RG.name
  location              = azurerm_resource_group.Test_Chase_RG.location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  admin_password      = "P@$$w0rd1234!"
  network_interface_ids = [azurerm_network_interface.Test_Chase-nic-2.id]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}