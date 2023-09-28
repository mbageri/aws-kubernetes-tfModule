terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.18.1"
    }
  }
}

provider "aws" {

  region = "eu-north-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "web-server" {
  ami = "ami-0989fb15ce71ba39e"

  instance_type = "t3.micro"

  tags = {
    created_by = "terraform"
  }
}