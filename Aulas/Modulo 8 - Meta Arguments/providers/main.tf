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
    key    = "provider/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      owner      = "rafaalmeidaterraformer"
      managed-by = "terraform"
    }
  }
}

provider "aws" {
  alias = "europe"

  region = "eu-central-1"

  default_tags {
    tags = {
      owner      = "rafaalmeidaterraformer"
      managed-by = "terraform"
    }
  }
}

provider "aws" {
  alias = "sp"

  region = "sa-east-1"

  default_tags {
    tags = {
      owner      = "rafaalmeidaterraformer"
      managed-by = "terraform"
    }
  }
}

module "vpc" {
  providers = {
    aws.provider_1 = aws.europe
    aws.provider_2 = aws.sp
  }

  source = "./vpc"
}