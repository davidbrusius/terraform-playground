terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.63"
    }
  }
  required_version = ">= 0.14.9"
}

resource "aws_s3_bucket" "should-be-private-bucket" {
  bucket = "private-bucket"
  acl    = "public-read-write"
}
