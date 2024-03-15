terraform {
  required_version = ">= 1.3.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.60.0"
    }
  }

  backend "s3" {
    bucket = "rafael-bucket-remote-state"
    key    = "time-sleep/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      owner      = "rafasantos"
      managed-by = "terraform"
    }
  }
}

#Acessa remote state no bucket
data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "rafael-bucket-remote-state"
    key    = "aws-vpc/terraform.tfstate"
    region = "us-east-1"
  }
}
