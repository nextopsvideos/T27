terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.41.0"
    }
  }
  
}

provider "azurerm" {
  resource_provider_registrations = "none" 
  features {}
  subscription_id = "0000000-00000-0000-00000-0000000"  
}