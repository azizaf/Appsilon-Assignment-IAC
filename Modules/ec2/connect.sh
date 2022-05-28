#!/bin/bash
sudo apt-get update -y
sudo apt-get install curl -y
sudo apt-get -y install gdebi-core
export R_VERSION=4.1.3
sudo curl -O https://cdn.rstudio.com/r/ubuntu-2004/pkgs/r-${R_VERSION}_1_amd64.deb
sudo gdebi -n r-${R_VERSION}_1_amd64.deb
ln -s /opt/R/${R_VERSION}/bin/R /usr/local/bin/R
ln -s /opt/R/${R_VERSION}/bin/Rscript /usr/local/bin/Rscript
sudo curl -O https://cdn.rstudio.com/connect/2022.05/rstudio-connect_2022.05.0~ubuntu20_amd64.deb
sudo gdebi -n rstudio-connect_2022.05.0~ubuntu20_amd64.deb