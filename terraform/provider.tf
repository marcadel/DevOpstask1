terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "markadel"

    workspaces {
      name = "pwc"
    }
  }
}
provider "aws" {
  region = "us-west-2"  # Update with your desired region
}