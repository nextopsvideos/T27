resource "azurerm_resource_group" "myrg" {
   name     = "cbdrg01"
   location = "eastus"

   lifecycle {
     create_before_destroy = true
   }
}

resource "azurerm_virtual_network" "myvnet" {
   resource_group_name = azurerm_resource_group.myrg.name  #"FirstRG"
   location            = azurerm_resource_group.myrg.location
   name                = "cbdvnet"
   address_space       = [ "10.4.0.0/16" ]
   lifecycle {
     create_before_destroy = true
   }
}

resource "azurerm_subnet" "subnet1" {
   resource_group_name  = azurerm_resource_group.myrg.name
   virtual_network_name = azurerm_virtual_network.myvnet.name
   name                 = "Subnet1"
   address_prefixes     = [ "10.4.0.0/24" ]  
   lifecycle {
     create_before_destroy = true
   }
}
