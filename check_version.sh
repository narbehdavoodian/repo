#!/bin/bash

filepath="https://raw.githubusercontent.com/narbehdavoodian/repo/master/versions.json"
software=$1

curl -s $filepath | jq -r ".software.`echo $software`[]"

## @narbehdavoodian this is how you get the version from json
# version=$(curl -s https://raw.githubusercontent.com/narbehdavoodian/repo/master/check_version.sh | bash -s -- "onenote")