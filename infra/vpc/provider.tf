terraform {
  required_version = "~>1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket  = "terrafrom-saicharan"
    key     = "vpc/dev.tfstate"
    region  = "us-east-1"
    encrypt = true
    profile = "default"
  }
}



# Configure the AWS Provider
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}
