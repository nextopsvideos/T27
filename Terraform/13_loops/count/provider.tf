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
  client_id       = "a355c32e-4a22-4b05-aab4-be236850fa6e"
  client_secret   = "a355c32e-4a22-4b05-aab4-be236850fa6e"
  tenant_id       = "a355c32e-4a22-4b05-aab4-be236850fa6e"  
}