resource "azurerm_resource_group" "myrg" {
   name     = "FirstRG"
   location = "eastus"
}

resource "azurerm_virtual_network" "myvnet" {
   resource_group_name = azurerm_resource_group.myrg.name
   location            = azurerm_resource_group.myrg.location
   name                = "FirstVNET"
   address_space       = [ "10.3.0.0/16" ]
}

resource "azurerm_subnet" "subnet1" {
   resource_group_name  = azurerm_resource_group.myrg.name
   virtual_network_name = azurerm_virtual_network.myvnet.name
   name                 = "Subnet1"
   address_prefixes     = [ "10.3.0.0/24" ]  
}
