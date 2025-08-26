terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.41.0"
    }
  }
  backend "azurerm" {
    access_key           = "3llHgFkkFVW7Yy9IC8nqYd7nzbbcfz3KiPbt9Efcznn2Grc9AL9X4GxcjLBqi5A7vUmzuEnUiLwc+AStD6OVRA=="  
    storage_account_name = "nextopssat27"                                 
    container_name       = "workspaces"                                  
    key                  = "terraform.tfstate"                   
  }
}

provider "azurerm" {
  resource_provider_registrations = "none" 
  features {}
  subscription_id = "a355c32e-4a22-4b05-aab4-be236850fa6e"
}