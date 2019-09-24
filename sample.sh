#!/bin/bash
apt-get update
apt-get install git -y
git --version
apt-get insatll maven -y
mvn --version
apt-get install openjdk-8-jdk -y
java -version
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
echo deb https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.lits
apt-get update
apt-get install jenkins
systemctl start jenkins
systemctl status jenkins
