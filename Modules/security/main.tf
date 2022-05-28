# Default Security Group of VPC
resource "aws_security_group" "rstudio-sg" {
  name        = var.rstudio-sg-name
  description = "rstudio SG to alllow traffic from the VPC"
  vpc_id      = var.vpc_id


    ingress {
    from_port = "22"
    to_port   = "22"
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
    ingress {
    from_port = "443"
    to_port   = "443"
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
    ingress {
    from_port = "3939"
    to_port   = "3939"
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = "0"
    to_port   = "0"
    protocol  = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Environment = "rstudio-sg"
  }
}
