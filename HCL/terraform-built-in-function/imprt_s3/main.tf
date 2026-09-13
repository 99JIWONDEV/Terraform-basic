# terraform 설정 
terraform {
  required_version = ">= 1.9.6"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 5.73.0"
    }
  }
}

# aws provider 설정
provider "aws" {
  region = "us-east-1"
  profile = "my-profile"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-existing-bucket-202609120928"
}


# 
import {
  to = aws_s3_bucket.example
  id = "my-existing-bucket-202609120928"
}