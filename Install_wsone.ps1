
$logfile="C:\WSONEInstallLog.txt"
$link="https://packages.vmware.com/wsone/AirwatchAgent.msi"

"$(Get-date); Downloading Intelligent Hub $link" | Out-File $logfile -Append
Invoke-RestMethod -Method Get -URI $link -OutFile C:\AirwatchAgent.msi

Unblock-File C:\AirwatchAgent.msi

"$(Get-date); Enrolling computer" | Out-File $logfile -Append
Start-Process C:\Windows\System32\msiexec.exe -ArgumentList "/i C:\AirwatchAgent.msi /qn" -Wait
