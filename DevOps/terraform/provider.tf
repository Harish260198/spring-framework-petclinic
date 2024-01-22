terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      # version = "~> 5.0"
    }
  }
}

provider "aws" {
  # profile = "default"
  region     = "ap-south-1"
  access_key = "AKIAXK3L4ATPVNMZKXEW"
  secret_key = "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"
}