terraform {
  required_version = ">= 1.3.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.49.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-terraform-state-v2"
    storage_account_name = "rafaelsterraformstatev2"
    container_name       = "remote-state-v2"
    key                  = "terraform-console/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}