resource "azurerm_resource_group" "webrg" {
  name     = "WebRG"
  location = "westus"
}

resource "azurerm_service_plan" "myasp" {
  name                = "nextopsaspt27"
  resource_group_name = azurerm_resource_group.webrg.name
  location            = azurerm_resource_group.webrg.location
  os_type             = "Linux"
  sku_name            = "S1"
}

resource "azurerm_linux_web_app" "myapp" {
  name                = "nextopswat27"
  resource_group_name = azurerm_resource_group.webrg.name
  location            = azurerm_service_plan.myasp.location
  service_plan_id     = azurerm_service_plan.myasp.id

  site_config {}
}