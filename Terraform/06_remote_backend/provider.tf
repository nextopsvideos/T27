terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.40.0"
    }
  }
  backend "azurerm" {
    access_key           = "rtLYd93Gx+8o77UtHuSV3o/PshLjNfXsn0HmTwE5FqsB1TJTyhY5ytW2Ov9byt4ZUtjWp6/VOhMy+AStZgFhTQ=="  
    storage_account_name = "nextopssat27"                                 
    container_name       = "tfstate"                                  
    key                  = "terraform.tfstate"                   
  }
}

provider "azurerm" {
  resource_provider_registrations = "none" 
  features {}
  subscription_id = "a355c32e-4a22-4b05-aab4-be236850fa6e"
}