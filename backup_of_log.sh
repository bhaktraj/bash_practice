#!/bin/bash

######################### Name of Backup ######################
backup="$(date +"%d_%m_%H_%M")"

######################### Source File Path ####################
source_path=/var/log/syslog

######################## Destination File Path ################
destination_path=/home/vagrant/backupfile

#################### Creation of Backup File ##################
sudo tar -cvzf $destination_path/syslog$backup.tar.gz --absolute-names $source_path

#################### Show Backup File #########################

ls $destination_path

