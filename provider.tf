terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.33.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "gokul-remote-state"
    key    = "foreach"
    region = "us-east-1"
    dynamodb_table = "gokul-locking"
  }
}
       
provider "aws" {        # Configure the AWS Provider
  region = "us-east-1"
}
