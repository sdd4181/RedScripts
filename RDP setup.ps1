$password = ConvertTo-SecureString "asdfasdf" -AsPlainText -Force
Write-Output $password
New-LocalUser "AdminScoring" -Password $password -FullName "Scoring Account" -Description "Scoring Acc."
Add-LocalGroupMember -Group "Administrators" -Member "AdminScoring"
Add-LocalGroupMember -Group "Remote Desktop Users" -Member "AdminScoring"