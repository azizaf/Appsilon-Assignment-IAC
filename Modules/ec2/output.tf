output "rstudio-DNS" {
  value = aws_instance.rstudio-vm.public_dns
}