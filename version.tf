terraform {
  required_version = ">= 0.12"
  required_providers {
    aws = {
        source = "Hashicorp/aws"
        version = "4.52.0"
    }
  }
  
}

provider "aws" {
    region = "us-east-1"
}