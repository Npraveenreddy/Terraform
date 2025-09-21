terraform {
  backend "s3" {
    bucket = "redshift-bucket-test123"   # your S3 bucket
    key    = "terraform/state.tfstate"   # path inside the bucket
    region = "us-east-1"                 # update if your bucket is in a different region
  }
}

provider "aws" {
  region = "us-east-1" # match your bucket region
}

resource "aws_s3_bucket" "sample_bucket" {
  bucket = "praveen1234reggvuas" # must be globally unique
  acl    = "private"

  tags = {
    Name        = "SamplePOCBucket"
    Environment = "POC"
  }
}
