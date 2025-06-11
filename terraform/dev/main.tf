resource "aws_instance" "example" {
  ami           = "ami-0731becbf832f281e" # Example for ubuntu in us-east-1
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.mysg.id]

  tags = {
    Name        = "Terraform-EC2"
    Environment = "dev"
  }
}

resource "aws_security_group" "mysg" {  
  name = "mysg"
}

resource "aws_vpc_security_group_egress_rule" "mysgrule1" {
  security_group_id = aws_security_group.mysg.id
  cidr_ipv4 = "0.0.0.0/0"
  from_port = 22
  to_port = 22
  ip_protocol = "tcp"
  tags = {
    Name = "mysg"
  }
}



