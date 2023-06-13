terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.7.0"
    }
  }

backend "azurerm" {
    resource_group_name  = "terraform-rg"
    storage_account_name = "azharistorage"
    container_name       = "azharicontainer"
    key                  = "terraform.tfstate"
  }
}
# Configure the Microsoft Azure Provider
provider "azurerm" {
  use_oidc = true
  features {}
  
}
