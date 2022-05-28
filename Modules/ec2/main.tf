resource "aws_instance" "rstudio-vm" {
  ami           = var.rstudio-ami-id
  instance_type = var.rstudio-instance-type
  key_name = var.rstudio-key
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [var.sg_id]
  
  user_data ="${file("connect.sh")}" 
  tags = {
    Name = var.rstudio-tag
  }
}