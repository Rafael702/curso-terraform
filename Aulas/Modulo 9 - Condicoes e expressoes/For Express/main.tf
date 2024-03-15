terraform {
  required_version = ">= 1.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.48.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-terraform-state-v2"
    storage_account_name = "rafaelsterraformstatev2"
    container_name       = "remote-state-v2"
    key                  = "for-expression/terraform.tfstate"
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}