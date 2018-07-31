#!/bin/bash
# Name: setup-keys.sh
# Author: Chuck Gilbert <gilbertc777@gmail.com>
# Description: Simple script to setup ssh keys on a linux machine
#  for use with other linux based authentication mechanisms.
#

DATE=`date +%Y-%m-%d`

# Check for existing .ssh directory and keys
if [ -d "~/.ssh"]
then
  echo "Existing .ssh directory found!  Will make backup"
  cp -rp ~/.ssh ~/.ssh-${DATE}
  echo "Backup: ~/.ssh-${DATE}"
fi

# Generate the ssh keys
ssh-keygen -t rsa -q
cat ~/.ssh/id_rsa > ~/.ssh/authorized_keys

# Fix permissions
chmod 700 ~/.ssh
chmod 400 ~/.ssh/*

# end of script
