# for some reason, a recent Chrome update at this time included shortcuts to the Google Suite. we don't need that BS. would have been nice to have the option prior to these shortcuts being added. here's a short script you can drop in your SYSVOL or push with Intune to remove these.
$ErrorActionPreference = 'SilentlyContinue'

Remove-Item -Recurse -Force "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Chrome Apps"

