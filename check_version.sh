software=$1
curl -s https://raw.githubusercontent.com/narbehdavoodian/repo/master/versions.json | jq -r ".software.`echo $software`[]"



## this is how you get the version from json
# version=$(curl -s https://raw.githubusercontent.com/narbehdavoodian/repo/master/check_version.sh | bash -s -- "onenote")