resource "aws_instance" "example" {
  ami           = "ami-0731becbf832f281e" # Example for ubuntu in us-east-1
  instance_type = var.instance_type

  tags = {
    Name        = "Terraform-EC2"
    Environment = "dev"
  }
}

import {
  to = aws_instance.example
  id = "i-05760dffda7792ba2"
}

