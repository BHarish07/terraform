terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.50.0"
    }
  }
 backend "s3" {
    bucket = "terraform-multienv"
    key    = "terraform workspace"
    region = "us-east-1"
    dynamodb_table = "terraform-multidev-state-locking"
  }


}

provider "aws" {
    region = "us-east-1"  
}