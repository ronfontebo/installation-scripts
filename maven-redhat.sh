# Maven installation script (RHEL 7/8, CentOS 7/8 or Amazon Linux OS)
#====================================================================
#
# Steps:
#=======
# 0. Navigate to /opt directory and create a maven directory
# 1. Install wget, nano, tree, unzip and git packages
# 2. Install Java JDK 1.8+ as a pre-requisite for maven to run.
# 3. Download the Maven Software zip archive using "wget"
# 4. Extract/Unzip the maven zip archive to apache-maven-3.8.5 using "unzip"
# 5. Remove the maven zip archive
# 6. Rename the apache-maven-3.8.5 to maven
# 7. Change maven home directory to /opt/maven
# 8. Change maven home path to /opt/maven/bin
# 9. Validate the maven installation by checking the maven version




#!/bin/bash
sudo hostname maven
cd /opt
sudo mkdir maven
sudo yum install -y wget nano tree unzip git
sudo yum install -y java-11-openjdk-devel java-1.8.0-openjdk-devel
java -version
git --version
sudo wget https://dlcdn.apache.org/maven/maven-3/3.8.5/binaries/apache-maven-3.8.5-bin.zip
sudo unzip apache-maven-3.8.5-bin.zip
sudo rm -rf apache-maven-3.8.5-bin.zip
sudo mv apache-maven-3.8.5 maven
sudo echo 'export M2_HOME=/opt/maven' >> ~/.bash_profile 
sudo echo 'export PATH=$PATH:$M2_HOME/bin' >> ~/.bash_profile
mvn -version


########################################### END OF SCRIPT!!!! ################################################
