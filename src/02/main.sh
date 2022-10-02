#!/bin/bash

source data.sh

data

echo "save data to file? [Y/n]"
read permission;

if [[ $permission  = Y ]] || [[ $permission = y ]]
then
    file=$(date +"%d_%m_%Y_%H_%M_%S".status)
    output>"$file"
fi
