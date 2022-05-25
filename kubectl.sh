# kubectl installation script (linux)
=====================================
#
# Steps:
#=======
# 1- Download the latest release of the kubectl binary
# 2- Install kubectl
# 3- Test to ensure the version you installed is up-to-date:


#!/bin/bash
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
kubectl version --client

########################################### END OF SCRIPT!!!! ################################################





