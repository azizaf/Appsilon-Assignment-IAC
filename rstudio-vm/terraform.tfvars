#Vm vars
rstudio-ami-id= "ami-0c4f7023847b90238"
rstudio-instance-type= "t2.micro"
rstudio-tag= "Rstudio-vm"
rstudio-key= "ansible"

#provider 
provider-region= "us-east-1"
provider-profile = "730535261799_AWSAdministratorAccess"

#vpc
rstudio-vpc-cdr = "10.20.0.0/16"
rstudio-vpc-tag = "rtsudio"

#subnet

rstudio-az = ["us-east-1a"]
rstudio-subnet-cidr = ["10.20.1.0/24"]
rstudio-sg-name = "rstdio-default-sg"
