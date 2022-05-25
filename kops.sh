# KOPs installation script (linux)
==================================
#
# Steps:
#=======
# 0- kubectl is a prerequisite to kops
# 1- Download the latest release of the kops binary
# 2- Add execute permissions to the kops binary
# 3- Move kops binary to /usr/local/bin/ directory


#!/bin/bash
curl -Lo kops https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
chmod +x kops
sudo mv kops /usr/local/bin/kops


########################################### END OF SCRIPT!!!! ################################################