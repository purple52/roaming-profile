#!/bin/sh

DIRS="Desktop Documents Downloads Music Pictures Public Templates Videos"

for DIR in $DIRS
do
    mkdir "${DIR}"
done
