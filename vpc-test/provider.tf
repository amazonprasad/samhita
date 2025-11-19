terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.17.0"
    }
  }

  backend "s3" {
    bucket = "terramuni"
    key    = "test"
    region = "us-east-1"
    dynamodb_table = "terramuni"
      
  }
}


provider "aws" {
    region = "us-east-1"
  
}