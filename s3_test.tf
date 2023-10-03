terraform {
    cloud {
        organization = "lathanlarue" /// replace with your organization name
        workspaces {
          name = "aws-terraforming" /// replace with your workspace name
        }
      }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.12.1"
    }
  }
}

resource "random_string" "test" {
  length  = 8
  lifecycle {
    ignore_changes = all
  }
}


# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1" # define region as per your account
}

resource "aws_s3_bucket" "test_bucket" {
  bucket = "ijukhygjthfgtjhkugyjfthyjgukhgyjf"

  object_lock_enabled = false

  tags = {
    Environment = "Prod"
  }
}