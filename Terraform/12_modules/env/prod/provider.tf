terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.41.0"
    }
  }
  backend "azurerm" {
    access_key           = ""  
    storage_account_name = "sasasa"                                 
    container_name       = "modules"                                  
    key                  = "PROD/terraform.tfstate"                   
  }
}

provider "azurerm" {
  resource_provider_registrations = "none" 
  features {}
  subscription_id = "xxxxxx-xxxx-xxx--xxxx-xx"
}