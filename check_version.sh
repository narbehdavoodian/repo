software=$1
curl -s https://raw.githubusercontent.com/narbehdavoodian/repo/master/versions.json -o versions.json
jq -r ".software.`echo $software`[]" versions.json
rm versions.json


## this is how you get the version from json
# version=$(curl -s https://raw.githubusercontent.com/narbehdavoodian/repo/master/check_version.sh | bash -s -- "onenote")