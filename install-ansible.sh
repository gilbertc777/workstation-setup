#!/bin/bash
# Name: install-ansible.sh
# Author: Chuck Gilbert <gilbertc777@gmail.com>
# Description: This script is used to ensure an install of ansible on
#  either Ubuntu or RHEL/Fedora variants.
#

if [ -f "/usr/bin/apt-get" ]
then
  sudo apt-get update
  sudo apt-get install -y ansible
fi

# TODO: Check for yum

# end of script