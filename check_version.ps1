param
(
    [string]$software
)

$filepath="https://raw.githubusercontent.com/narbehdavoodian/repo/master/versions.json"
$req=Invoke-RestMethod $filepath

return $req.software.$software.version

## @narbehdavoodian this is how you get the version from json
#  Invoke-RestMethod https://raw.githubusercontent.com/narbehdavoodian/repo/master/check_version.ps1 -OutFile check_version.ps1                   
#  $version=(./check_version.ps1 -software "skype")                                                                  