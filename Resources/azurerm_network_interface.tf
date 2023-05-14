# Create first network interface
resource "azurerm_network_interface" "Test_Chase-nic-1" {
  name                = "Test_Chase-nic-1"
  location            = azurerm_resource_group.Test_Chase_RG.location
  resource_group_name = azurerm_resource_group.Test_Chase_RG.name

  ip_configuration {
    name                          = "Test_Chase-ipconfig-1"
    subnet_id                     = azurerm_subnet.Test_Chase_Subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}


# Create second network interface
resource "azurerm_network_interface" "Test_Chase-nic-2" {
  name                = "Test_Chase-nic-2"
  location            = azurerm_resource_group.Test_Chase_RG.location
  resource_group_name = azurerm_resource_group.Test_Chase_RG.name

  ip_configuration {
    name                          = "Test_Chase-ipconfig-2"
    subnet_id                     = azurerm_subnet.Test_Chase_Subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}
