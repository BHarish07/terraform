terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.50.0"
    }
  }
 backend "s3" {
    bucket = "demo-terraform-state-file-expense"
    key    = "remote-terraform-state"
    region = "us-east-1"
    dynamodb_table = "demo_state_locking"
  }


}

provider "aws" {
    region = "us-east-1"  
}