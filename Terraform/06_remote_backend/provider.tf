terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.40.0"
    }
  }
  backend "azurerm" {
    access_key           = "asfjkdjsakcjkadjakndasknkn"  
    storage_account_name = "nextopssat27"                                 
    container_name       = "tfstate"                                  
    key                  = "terraform.tfstate"                   
  }
}

provider "azurerm" {
  resource_provider_registrations = "none" 
  features {}
  subscription_id = "xxxxxx-xxxx-xxxx--xxxxxx-xxx"
}