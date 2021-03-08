#!/bin/bash

 # update and install essentials and package managers
sudo apt update -y && sudo apt upgrade -y

 # install snapd
sudo apt install snapd -y

 # install docker
sudo apt install docker -y

 # install terraform
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install terraform -y

 # install kubernetes
sudo snap install microk8s --classic -y

 # install vscode
sudo snap install --classic code -y

 # install sublimetext
sudo apt install apt-transport-https ca-certificates curl software-properties-commony
curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo add-apt-repository "deb https://download.sublimetext.com/ apt/stable/"
sudo apt update -y
sudo apt install sublime-text -y
