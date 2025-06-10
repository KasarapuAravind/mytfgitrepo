variable "region" {
    description = "the aws regions"
    type = string
    default = "us-east-1"
}

variable "instance_type" {
  default = "t2.micro"
}
