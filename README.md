# Description
This repository contains a sample setup for installing Raspberry PI's and deploying Docker containers to them using Ansible. It is a copy of the actual files that I use (which are safely stored in a private repository :)) but in which all privacy related variables have been replaced with dummy values.

## Short explenation of the setup of this repository
The root of the repository contains the playbooks foor deploying Docker containers and the playbooks and scripts for bootstrapping my Raspberry PI's.

## Bootstrapping a new Raspberry PI
Bootstrapping a Raspberry PI starts with flashing the Raspbian image to an SD-card, USB-stick or SSD-drive and making sure an empty ssh file is present in the image to make sure SSH is enabled during the first boot.  
After booting the Raspberry PI, retrieve the IP-address from it and execute the `bootstrap-raspberrypi.sh` script. This script will copy your public SSH-key (so you don't have to type a password every time you're SSH'ing to the Raspberry PI) and than it will set the basic configuration such as the password for the PI-user, hostname, language settings and various other setings.

## Install specific software
Each Raspberry PI will serve a different purpose and therefore requires different configuration and software. For this the `install-*.yml` playbooks are created.

## Deploy or update a Docker container
To deploy or update a Docker container, simply run the appropriate `deploy-container-for-*.yml` playbook.