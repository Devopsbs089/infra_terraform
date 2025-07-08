module "resource_group" {
  source              = "../module/azurerm_resource_group"
  rg_name             = "todo_rg"
  location            = "westeurope"
}

module "virtual_network" {
  source = "../module/azurerm_virtual_network"
  depends_on = [ module.resource_group ]
 vnet_name="todo_vnet"
 location= "westeurope"
 rg_name= "todo_rg"
address_space = ["10.0.0.0/16"]
}
  
module"subnet"{
  source = "../module/azurerm_subnet"
  depends_on = [ module.virtual_network ]
  subnet_name= "todosubnet"
  rg_name = "todo_rg"
  vnet_name = "todo_vnet"
  address_prefixes = ["10.0.0.0/24"]

}