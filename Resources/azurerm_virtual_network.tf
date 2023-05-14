resource "azurerm_virtual_network" "Test_Chase_VNet" {
  name                = "Test_Chase_VNet"
  address_space       = ["10.210.0.0/23"]
  location            = azurerm_resource_group.Test_Chase_RG.location
  resource_group_name = azurerm_resource_group.Test_Chase_RG.name
}
