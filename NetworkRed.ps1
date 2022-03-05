#reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v 'Shutdown' /t REG_SZ /d 'powershell.exe -ExecutionPolicy Bypass iex "C:\Users\Schuyler\Desktop\toast.ps1"'
reg ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v PromptOnSecureDesktop /t REG_DWORD /d 1 /f

#enables all rules
netsh advfirewall set allprofiles firewallpolicy blockinbound,blockoutbound
netsh advfirewall firewall delete rule all
#netsh advfirewall reset
