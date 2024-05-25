terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.50.0"
    }
  }
   backend "s3" {
    bucket = "remote-state-demo-expense"
    key    = "remote-state-lock"
    region = "us-east-1"
    dynamodb_table = "demo-terraform-state-locking"
  }

}

provider "aws" {
    region = "us-east-1"  
}
  