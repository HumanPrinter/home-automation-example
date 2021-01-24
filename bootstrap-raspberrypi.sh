#!/bin/bash

# Ask for the IP-address of the Raspberry PI
read -p 'IP-address: ' ipaddress
read -p 'Desired hostname: ' hostname

echo
echo "Copying RSA key"
ssh-copy-id pi@$ipaddress
echo
echo "Invoking playbook"
ansible-playbook bootstrap-raspberrypi.yml -i "$ipaddress," -e "hostname=$hostname" --user pi

echo "Done"