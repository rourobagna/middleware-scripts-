#!/bin/bash
# Author : Group9
# Date : Oct 26, 2022
# Description : Sonarqube script

echo "sonarqube script will start in 3 second" 


sleep 3

sudo yum update -y
sudo yum install java-11-openjdk-devel -y      
cd /opt
sudo yum install wget -y
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip   
 sudo yum install unzip -y
sudo unzip sonarqube-9.3.0.51899.zip
cd sonarqube-9.3.0.51899/bin/linux-x86-64/     
sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
./sonar.sh start
sudo yum install net-tools -y
ifconfig
ip a
