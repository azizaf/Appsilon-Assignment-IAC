module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "Rstudio"
  cidr = var.rstudio-vpc-cdr

  azs             = var.rstudio-az
  public_subnets  =var.rstudio-subnet-cidr


  enable_nat_gateway = true
  enable_vpn_gateway = false
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = "${var.rstudio-vpc-tag}"
   
  }
}