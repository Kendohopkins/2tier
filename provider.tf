terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

variable "az1" {
  default = "us-east-1b"
}

variable "az2" {
  default = "us-east-1c"
}
