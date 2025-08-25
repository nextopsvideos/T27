resource "azurerm_resource_group" "rg1" {
  name      = "DSRG"
  location  = "eastus"
}

resource "azurerm_virtual_network" "vnet1" {
    name    = "DSVNET01"
    resource_group_name = azurerm_resource_group.rg1.name
    location = azurerm_resource_group.rg1.location
    address_space = [ "10.4.0.0/16" ]  
    
}

resource "azurerm_subnet" "subnet1" {
    name                    = "DSSubnet1"
    resource_group_name     = azurerm_resource_group.rg1.name
    virtual_network_name    = azurerm_virtual_network.vnet1.name
    address_prefixes        = ["10.4.0.0/24"]  
}