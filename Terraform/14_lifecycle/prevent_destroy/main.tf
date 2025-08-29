resource "azurerm_resource_group" "myrg" {
   name     = "pdrg01"
   location = "eastus"

   lifecycle {
     prevent_destroy = true
   }
}

resource "azurerm_virtual_network" "myvnet" {
   resource_group_name = azurerm_resource_group.myrg.name  #"FirstRG"
   location            = azurerm_resource_group.myrg.location
   name                = "pdvnet01"
   address_space       = [ "10.4.0.0/16" ]   
}
