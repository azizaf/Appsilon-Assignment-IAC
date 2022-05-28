variable "rstudio-ami-id" {}
variable "rstudio-instance-type" {}
variable "rstudio-tag" {}
variable "rstudio-key" {}


#provider 

variable "provider-region" {}
variable "provider-profile" {}

#vpc

variable "rstudio-vpc-cdr" {}
variable "rstudio-vpc-tag" {}

#subnets

variable "rstudio-az" {}
variable "rstudio-subnet-cidr" {}

#sg
variable "rstudio-sg-name" {}