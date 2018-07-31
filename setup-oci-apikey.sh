#!/bin/bash
# Name: setup-oci-apikey.sh
# Author: Chuck Gilbert <gilbertc777@gmail.com>
# Description: Setup required OCI API keys needed for
#   OCI commands as well as terraform provider.

# Define variables
DATE=`date +%Y-%m-%d`

# Check for .oci directory
# If does not exist, create it
# If it does exist, make a backup
if [ ! -d ~/.oci ]
then
  mkdir ~/.oci
else
  cp -rp ~/.oci ~/.oci-${DATE}
fi

# Generate Private key w/o password
echo "Generating private key"
openssl genrsa -out ~/.oci/oci_api_key.pem 2048

# Resolve permisisons for private key
echo "Fixing private key permissions"
chmod go-rwx ~/.oci/oci_api_key.pem

# Generate API public key
echo "Generating public key"
openssl rsa -pubout -in ~/.oci/oci_api_key.pem -out ~/.oci/oci_api_key_public.pem

# Notify user of need to upload to account
echo "Please ensure you upload API public key to OCI user console."

# Get key fingerprint
echo "Export key fingerprint"
openssl rsa -pubout -outform DER -in ~/.oci/oci_api_key.pem | openssl md5 -c