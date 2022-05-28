terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.15.1"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  
}


module "rstudio-vpc" {
  source = "../Modules/vpc"
  rstudio-vpc-cdr = var.rstudio-vpc-cdr
  rstudio-vpc-tag = var.rstudio-vpc-tag
  rstudio-az = var.rstudio-az
  rstudio-subnet-cidr = var.rstudio-subnet-cidr
}

module "sg" {
  source = "../Modules/security"
  rstudio-sg-name = var.rstudio-sg-name
  vpc_id = module.rstudio-vpc.vpc_id
  depends_on = [
    module.rstudio-vpc
  ]
}

module "rstudio-vm" {
  source = "../Modules/ec2"
  rstudio-ami-id = var.rstudio-ami-id
  rstudio-instance-type = var.rstudio-instance-type
  rstudio-key = var.rstudio-key
  rstudio-tag = var.rstudio-tag
  subnet_id = flatten(module.rstudio-vpc.public_subnets)[0]
  sg_id = module.sg.rstudio-sg-id

  depends_on = [
    module.rstudio-vpc,
    module.sg
  ]
  
}