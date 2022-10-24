#!/bin/bash 
sudo apt-get update
sudo apt-get install software-properties-common -y 
sudo apt-add-repository ppa:ansible/ansible 
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update  
sudo apt-get install ansible -y 
sudo apt-get install fontconfig openjdk-11-jre -y
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list' 
sudo apt-get update 
sudo apt-get install jenkins -y 
sudo apt-get install awscli -y