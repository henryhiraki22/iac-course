terraform {
  required_providers{
      aws = {
          source = "hashicorp/aws"
          version = "~> 3.27"
      }
  }
  required_version = ">= 0.14.9"
}

provider "aws" {
    profile = "default"
    region = "sa-east-1"
}

resource "aws_instance" "app_server" {
    ami = "ami-054a31f1b3bf90920"
    instance_type = "t2.micro"
    key_name = "ec2-saopaulo"
    tags = {
        Name = "aws-ansible-python"
    }
}
