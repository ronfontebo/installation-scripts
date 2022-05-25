# Installing Jenkins on RHEL 7/8, CentOS 7/8 or Amazon Linux OS
#==============================================================
# You can execute this script as user-data when launching your EC2 VM.
#
# Steps:
#=======
# 1. Install Java and other pre-requisites. 
# 2. Add Jenkins Repository and key
# 3. Install Jenkins
# 4. Start and enable jenkins service


#!/bin/bash
cd /opt
sudo yum install -y unzip wget tree git
sudo wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm
sudo yum install jdk-8u131-linux-x64.rpm -y

sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
cd /etc/yum.repos.d/
sudo curl -O https://pkg.jenkins.io/redhat-stable/jenkins.repo

sudo yum -y install jenkins

sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins


########################################### END OF SCRIPT!!!! ################################################









