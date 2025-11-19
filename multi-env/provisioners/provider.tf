terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.17.0"
    }
  }

   backend "s3" {
    bucket = "env212"
    key    = "provisioner"
    region = "us-east-1"
    dynamodb_table = "env-locking-dev"
      
   }
}


provider "aws" {
    region = "us-east-1"
  
}