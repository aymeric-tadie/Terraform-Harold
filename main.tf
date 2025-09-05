provider "aws" {
  region = var.region
}

resource "aws_instance" "Terraform_Harold" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = var.tags
}
