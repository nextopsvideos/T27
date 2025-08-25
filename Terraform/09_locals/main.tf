locals {
  rg_name       = azurerm_resource_group.myrg.name
  rg_location   = azurerm_resource_group.myrg.location
  vnet_name     = azurerm_virtual_network.myvnet.name
  prefix        = "nextops"
}

resource "azurerm_resource_group" "myrg" {
   name     = join("-",[local.prefix,var.rg_name])  #nextops-localsrg
   location = var.rg_location
}

resource "azurerm_virtual_network" "myvnet" {
   resource_group_name = local.rg_name  
   location            = local.rg_location
   name                = join("-",[local.prefix,var.vnet_name]) #nextops-localsvnet
   address_space       = var.vnet_addressspace
}

resource "azurerm_subnet" "subnet1" {
   resource_group_name  = local.rg_name
   virtual_network_name = local.vnet_name
   name                 = var.subnet_name
   address_prefixes     = var.subnet1_addressprefix
}