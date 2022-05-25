# Ansible installation script (redhat/centos)
=============================================
#
# Steps:
#=======
# 1. Install and Configure Python3 & python3-pip
# 2. Create ansible user
# 3. Set Password-less SSH for ansible user 
# 4. Switch to ansible user
# 5. Install Ansible as ansible user
# 6. Make a /etc/ansible directory
# 7. Change owner and group of the /etc/ansible directory to ansible
# 8. Verify ansible installation


#!bin/bash
sudo yum install python3 -y
sudo alternatives --set python /usr/bin/python3
python3 -V
sudo useradd ansible 
echo "ansible  ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/ansible
sudo su ansible
pip3 install ansible --user
sudo mkdir /etc/ansible
sudo chown -R ansible:ansible /etc/ansible/
ansible --version


########################################### END OF SCRIPT!!!! ################################################


