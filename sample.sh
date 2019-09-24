#!/bin/bash
apt-get update
apt-get install git -y
git --version
apt-get insatll openjdk-8-jdk -y
java  -version
apt-get install maven -y
mvn  --version
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
apt-get update
apt-get install jenkins -y
systemctl start jenkins
systemctl status jenkins
