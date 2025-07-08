
resource "azurerm_virtual_network" "virtual_network" {
  name                = var.vnet_name
  resource_group_name = var.rg_name
  location            = var.location
  address_space       = var.address_space
}