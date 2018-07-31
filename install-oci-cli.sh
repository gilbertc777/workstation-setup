#!/bin/bash
# Name: install-oci-cli.sh
# Author: Chuck Gilbert <gilbertc777@gmail.com>
# Description: This script calls the bootstrap script to install the OCI
#  cli.

if [ ! ~/bin/oci ]
then
  bash -c "$(curl -L https://raw.githubusercontent.com/oracle/oci-cli/master/scripts/install/install.sh)"
fi