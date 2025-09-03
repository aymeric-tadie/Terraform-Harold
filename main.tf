provider "aws" {
  region = "us-east-1" # Tu peux changer la région si nécessaire
}

resource "aws_instance" "Terraform_Harold" {
  ami           = "ami-00ca32bbc84273381"
  instance_type = "t2.small"
  key_name      = "HaroldKey"

  tags = {
    Name = "Terraform-Harold"
  }
}
