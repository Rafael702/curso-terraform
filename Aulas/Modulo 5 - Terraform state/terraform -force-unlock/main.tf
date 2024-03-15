terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.60.0"
    }
  }

  backend "azurerm" {
    resource_group_name = "rg-terraform-state-v2"
    storage_account_name = "rafaelsterraformstatev2"
    container_name       = "remote-state-v2"
    key                  = "comandos/terraform.tfstate"
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      owner      = "rafaterraformer"
      managed-by = "terraform"
    }
  }
}
