# Appsilon-Assignment-IAC

                                 USING TERRAFORM AND BASH SCRIPT TO DEPLOY RSTUDIO CONNECT
  Pre-requisites  
  
  - terraform
  - git
  - aws-cli
  - Access to an AWS account with valid credentials and permissions 
  
 Variables
 
  set up AWS credentials by doing aws configure and passing the 
  
  AWS_ACCESS_KEY_ID
  
  AWS_SECRET_ACCESS_KEY
  
  REGION
  
  OUTPUT
  
  i suggest using aws-vault for managing AWS profiles and setting these variables automatically.
  
  1. Clone repository
  Make sure git is installed and then clone the repository with the terraform configuration files for building RStudio Connect.
  use 
  
  git clone https://github.com/azizaf/Appsilon-Assignment-IAC.git
  
  2. open the cloned repository and then change the directory to the rstudio-vm directory where you will pass the required variables 
  
  3.open the terraform.tfvars file using any editor ofyour choice and change the following  
  
  #Vm vars
open your aws account and copy the ami for ubuntu 20.4 make sure it in same region where your aws cli profile is configured. replace it in as shown bellow 

rstudio-ami-id= "paste-ami"

pass in the instance type depending on your workload 

rstudio-instance-type= "paste instance type"

give a name to the instance to be launched 

rstudio-tag= "instance name "

create a keypair using the cli or console and pass the name of the keypair

rstudio-key= "keypair name"

#provider 
specify the region make sure its same as the region in cli

provider-region= "us-east-1"

when configuring your profile you gave a name to the profile pass the profile name 

provider-profile = "profile name"

#vpc
give the cidr of the vpc and name to the vpc or you can maintain the following 

rstudio-vpc-cdr = "10.20.0.0/16"

rstudio-vpc-tag = "rtsudio"

#subnet
give the availability zone of where you want to launch the instance 

rstudio-az = ["us-east-1a"]

rstudio-subnet-cidr = ["10.20.1.0/24"]

give a name to the security group

rstudio-sg-name = "rstdio-default-sg"
  
 4. Deploying 
  - open your terminal and navigate to the rstudio-vm directory then run the following commands
  - terraform plan  -> to see the changes to be made and if your good do 
   terraform apply -> to deploy the infrastructure 
   when the deployment is done the public DNS of the instance will be outputted 
   copy the public DNS and append 3939 as bellow 
   
   http://ec2-3-83-136-119.compute-1.amazonaws.com:3939/connect/
   
   Thank you 
  
