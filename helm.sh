# Helm3 installation script
#==========================
# Helm3 already has an installer get_helm.sh script that will automatically grab the latest version of Helm and install it locally.
# So this srcipt will simply download the original get_helm.sh script and run it locally.
#
# Steps:
#=======
# 1- Download the latest helm 3 installation script.
# 2- Add execute permissions to the downloaded script.
# 3- Execute the installation script. This script will automatically find the right binary for your system.
# 4- Validate helm installation by executing the helm command.



#!/bin/bash
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
helm                



############################################# END OF SCRIPT!!! ###############################################

# 5- Add the stable helm repo (OPTIONAL) -
# Once you have successfully installed Helm, you can move on to using Helm to manage charts by: 
# - Adding the stable helm repo that contains stable helm charts developed and maintained by the community and using the "helm search repo" command to search for the helm chart of a package/sofware of your choice. 
#   Uncomment the "hel repo add stable" line below to activate this option.
#    OR 
# - Creating your own charts.


# helm repo add stable https://charts.helm.sh/stable
# helm search repo <package-name>


##############################################################################################################
