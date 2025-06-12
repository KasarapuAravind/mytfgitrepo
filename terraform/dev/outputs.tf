output "ec2_info" {
    value = [for instance in aws_instance.example: instance.public_ip]
}

## test