terraform {
  required_providers {
    aws = {
        source = "harshicorp/aws"
    }
 
 
  }
}

provider "aws" {
  region = "us-south-1"
}