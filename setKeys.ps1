$ErrorActionPreference = 'SilentlyContinue'
Set-ExecutionPolicy Bypass
$systrayReg = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer' 

New-ItemProperty -Path $systrayReg -Name 'EnableAutoTray' -Value 0 -PropertyType DWord -Force

