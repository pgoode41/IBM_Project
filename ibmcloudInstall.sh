#!/bin/bash

############################################################################################################
# Sets up ibmcloud.
# Script will prompt for ibmcloud creds after installing.
############################################################################################################


#Update all of the things.
apt update -y
apt upgrade -y


curl -sL https://ibm.biz/idt-installer | bash

apt update -y


ibmcloud api https://api.ng.bluemix.net
ibmcloud login
ibmcloud target --cf


exit 0
