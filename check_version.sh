software=$1
curl -s https://raw.githubusercontent.com/narbehdavoodian/repo/master/versions.json -o versions.json
jq -r ".software.`echo $software`[]" versions.json