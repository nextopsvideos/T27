resource "azurerm_resource_group" "example" {
  name     = "output-demo"
  location = "East US"
}

resource "azurerm_virtual_network" "example" {
  name                = "op-demo"
  address_space       = ["10.70.0.0/16"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

output "vnet_dns_servers" {
    value = azurerm_virtual_network.example.dns_servers
}

output "vnet_address_space" {
    value = azurerm_virtual_network.example.address_space
}

output "rg_id" {
    value = azurerm_resource_group.example.id
}