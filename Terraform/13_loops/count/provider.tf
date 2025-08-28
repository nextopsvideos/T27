terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.41.0"
    }
  }
  backend "azurerm" {
    access_key           = "dasfklkasdjfkjsdakjkdjsfkjdasnckdsnkfadsfjksdjf"  
    storage_account_name = "sasasa"                                 
    container_name       = "modules"                                  
    key                  = "DEV/terraform.tfstate"                   
  }
}

provider "azurerm" {
  resource_provider_registrations = "none" 
  features {}
  subscription_id = "a355c32e-4a22-4b05-aab4-be236850fa6e"
  client_id       = "00000000-0000-0000-0000-000000000000"
  client_secret   = "00000000-0000-0000-0000-000000000000"
  tenant_id       = "10000000-0000-0000-0000-000000000000"  
}