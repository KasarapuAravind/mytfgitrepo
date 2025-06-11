provider "aws" {
  region = var.region
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.99.0"
    }
  }
  backend "s3" {
    bucket         = "dev-aravind-terraform-state-bucket"
    key            = "mytfgitrepo/dev/terraform.tfstate"
    region         = "us-west-2"
    encrypt        = true
    use_lockfile = true
  }
}