terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = var.profile
  region  = var.region
}

module "vpc" {
  source = "./modules/vpc"
}

module "subnet"  {
  source = "./modules/subnet"
  vpc_id = module.vpc.vpc_id
  region = var.region
}

module "iam" {
  source = "./modules/iam"

  environment = var.staging_environment
}

module "instance" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  ami                    = var.ami
  instance_type          = "t2.micro"
  name                   = "example-server"

  vpc_security_group_ids = [module.vpc.vpc_sg_id]
  subnet_id              = module.subnet.subnet_id_main

  tags = {
    Terraform            = "true"
    Environment          = var.staging_environment
  }
}