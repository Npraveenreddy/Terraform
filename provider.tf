provider "aws" {
  region = var.aws_region  # Replace with your desired region
}


terraform {
  backend "s3" {
    bucket  = "terraform-kno"  # Replace with your S3 bucket name
    key     = "terraform.tfstate"  # Replace with your desired path
    region  = "us-east-1"  # Replace with your desired region
    encrypt = true
  }
}
