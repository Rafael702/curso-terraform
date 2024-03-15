terraform {
    required_version = "~> 1.0.0" #versao do terraform - ~> 1.0.0 ate 1.0.n - => igual ou maior - != diferente de
    
    required_providers {
        aws = {
            version = "1.0"
            source = "hashicorp/aws"
        }

        azurerm = {
            version = "2.0"
            source = "hashicorp/azurerm"
        }
    }

    backend "s3" {

    }
}