data "azurerm_resource_group" "existingrg" {
  name = "DSRG"
}

data "azurerm_virtual_network" "existingvnet" {
  name                = "DSVNET01"
  resource_group_name = data.azurerm_resource_group.existingrg.name
}

data "azurerm_subnet" "existingsubnet" {
  name                  = "DSSubnet1"
  resource_group_name   = data.azurerm_resource_group.existingrg.name 
  virtual_network_name  = data.azurerm_virtual_network.existingvnet.name
}

resource "azurerm_subnet" "subnet2" {
  name                  = "DSSubnet2"
  resource_group_name   = data.azurerm_resource_group.existingrg.name 
  virtual_network_name  = data.azurerm_virtual_network.existingvnet.name 
  address_prefixes      = [ "10.4.1.0/24" ]
}

resource "azurerm_subnet" "subnet3" {
  name                  = "DSSubnet3"
  resource_group_name   = data.azurerm_resource_group.existingrg.name 
  virtual_network_name  = data.azurerm_virtual_network.existingvnet.name 
  address_prefixes      = [ "10.4.2.0/24" ]
}