$password = ConvertTo-SecureString "asdfasdf" -AsPlainText -Force
Write-Output $password
New-LocalUser "AdminScoring" -Password $password -FullName "Scoring Account" -Description "Scoring Acc."
Add-LocalGroupMember -Group "Administrators" -Member "AdminScoring"
Add-LocalGroupMember -Group "Remote Desktop Users" -Member "AdminScoring"
reg add "HKLM\System\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
netsh advfirewall firewall set rule group="remote desktop" new enable=Yes