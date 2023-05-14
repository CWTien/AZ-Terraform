resource "azurerm_subnet" "Test_Chase_Subnet" {
  name                 = "Test_Chase_Subnet"
  address_prefixes       = ["10.210.1.0/24"]
  resource_group_name  = azurerm_resource_group.Test_Chase_RG.name
  virtual_network_name = azurerm_virtual_network.Test_Chase_VNet.name
}
