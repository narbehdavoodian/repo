param
(
    [string]$software=""
)

$filepath="https://raw.githubusercontent.com/narbehdavoodian/repo/master/versions.json"

$req=Invoke-WebRequest  $filepath
$json = convertfrom-json $req.Content

return $json.software.$software.version

## @narbehdavoodian this is how you get the version from json
# $version= Invoke-WebRequest https://raw.githubusercontent.com/narbehdavoodian/repo/master/check_version.ps1 -software "skype"