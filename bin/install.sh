#!/bin/bash

# exit when any command fails
set -e

dir="$1"

[ $# -eq 0 ] && { echo "Usage: $0 dir-name"; exit 1; }

# Add users
./bin/mailbox_gen.sh

# Create the tree
./bin/create-tree.sh $dir 

# Create Root and Intermediate CA
./ca/create_root_ca.sh tree $dir
./ca/create_intermediate_ca.sh $dir
./bin/install-priv.sh $dir

echo -e "\nMessaging System Successfully Installed!"
