#!/bin/bash

# Delete all files and folders except .sh and .txt files and hidden folders
shopt -s extglob
shopt -s dotglob
rm -r !(*.sh|*.txt)

echo "Cleanup complete."
