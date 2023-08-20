# Expands the systems tray for Windows 10 1607+. Can be pushed with Intune.

$ErrorActionPreference = 'SilentlyContinue'
Set-ExecutionPolicy Bypass
$systrayReg = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer' 

New-ItemProperty -Path $systrayReg -Name 'EnableAutoTray' -Value 0 -PropertyType DWord -Force

