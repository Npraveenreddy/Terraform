provider "aws" {
  region = "us-east-1" # change to your preferred AWS region
}

resource "aws_s3_bucket" "sample_bucket" {
  bucket = "samplebucketpraveen123" # must be globally unique
  acl    = "private"

  tags = {
    Name        = "samplebucket"
    Environment = "POC"
  }
}
