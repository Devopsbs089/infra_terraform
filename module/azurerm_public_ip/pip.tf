resource "azurerm_public_ip" "pip1" {
  name                = var.pip
  resource_group_name = var.rg_name
  location            = var.location
  allocation_method   = "Static"
}