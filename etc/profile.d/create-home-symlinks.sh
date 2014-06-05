#!/bin/sh

# Location of directories to symlink
LOCATION="/mnt/bucket/${USER}"

DIRS="Desktop Documents Downloads Music Pictures Public Templates Videos"

NOW=$(date +"%Y%m%d%H%M%S")

## Loop around the list of folders
for DIR in $DIRS
do
   if ! [ -L "/home/${USER}/${DIR}" ]; then
     if [ -d "/home/${USER}/${DIR}" ] || [ -f "/home/${USER}/${DIR}" ]; then
         # If there is a directory of folder of the same name, move it out of the way
         mv "/home/${USER}/${DIR}" "/home/${USER}/${DIR}.${NOW}"
     fi
     # Create the symlink
     ln -s "${LOCATION}/${DIR}" "/home/${USER}/${DIR}"
   fi
done

