terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.17.0"
    }
  }

  backend "s3" {
    bucket = "terramuni"
    key    = "foreach"
    region = "us-east-1"
    dynamodb_table = "terramuni1"
      
  }
}


provider "aws" {
    region = "us-east-1"
  
}