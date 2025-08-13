terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.32.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "stg_rg"
    storage_account_name = "backednstg"

    container_name       = "bhawesh-tfstate"
    key                  = "aks.tfstate"
    
  }
}
provider "azurerm" {
  features {}
  subscription_id = "9f199aee-1ad7-464f-bd74-4b88ef990086"


  
}
