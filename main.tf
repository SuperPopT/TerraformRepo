terraform {
  backend "remote" {
    organization = "SuperPopT"
    workspaces {
      name = "TerraformRepo"
    }
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.28.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-096fda3c22c1c990a"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}