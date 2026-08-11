terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.98.0"
    }
  }

  backend "s3" {
    bucket = "ks-s3-testing-remote-state-dev "
    key    = "roboshop-dev-vpc"
    region = "us-east-1"
    dynamodb_table = "ks-s3-testing"
    encrypt        = true
    use_lockfile = true
  }
}

provider "aws" {
  # Configuration options"
}