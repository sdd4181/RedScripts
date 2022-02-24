#New-ItemProperty -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce -Name Shutdown -PropertyType String -Value 'C:\Users\Schuyler\Desktop\toast.ps1'
<<<<<<< HEAD
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce /v 'Shutdown' /t REG_SZ /d 'powershell.exe -ExecutionPolicy Bypass iex "C:\Users\Schuyler\Desktop\toast.ps1"'
Stop-Computer -Force -ComputerName 127.0.0.1
=======
#reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v 'Shutdown' /t REG_SZ /d 'powershell.exe -ExecutionPolicy Bypass iex "C:\Users\Schuyler\Desktop\toast.ps1"'
Stop-Computer -Force -ComputerName 127.0.0.1
>>>>>>> ebde5765bf300d7444ffba788468198ffeae6809
