


provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "sctp-ce9-tfstate"
    key    = "aalimsee-ce9-M3.1-gh-basic-workflow.tfstate" # Replace the value of key to <your>.tfstate
    region = "us-east-1"
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "aalimsee-tf-s3bucket"

  tags = {
    Name        = "aaron"
    Environment = "gh actions - Basic Terraform Workflow"
  }
}