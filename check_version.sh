software=$1
curl -s https://raw.githubusercontent.com/narbehdavoodian/repo/master/versions.csv -o versions.csv
version=$(awk -F, -v software="$software" '$1 == user { print $2; exit }' versions.csv)