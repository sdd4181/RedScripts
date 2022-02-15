reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /t REG_DWORD /v EnableLUA /d 0 /f
Stop-Computer -Force -ComputerName 127.0.0.1