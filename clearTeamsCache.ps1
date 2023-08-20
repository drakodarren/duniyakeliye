# MSTeams has been the bane of my existance since the disappearance of a traditional PBX in my life. Here's a quick script to clear the cache from the program's respective appdata. relatively simple.﻿
Write-Host "Microsoft Teams will be quit now in order to clear the cache."
try{
    Get-Process -ProcessName Teams | Stop-Process -Force
    Start-Sleep -Seconds 5
    Write-Host "Microsoft Teams has been successfully quit."
}
    catch{
    echo $_
}
# The cache is now being cleared.
try{
    Get-ChildItem -Path $env:APPDATA\"Microsoft\teams\code cache\cache" | Remove-Item -Recurse -Force
    Get-ChildItem -Path $env:APPDATA\"Microsoft\teams\blob_storage" | Remove-Item -Recurse -Force
    Get-ChildItem -Path $env:APPDATA\"Microsoft\teams\databases" | Remove-Item -Recurse -Force
    Get-ChildItem -Path $env:APPDATA\"Microsoft\teams\cache" | Remove-Item -Recurse -Force
    Get-ChildItem -Path $env:APPDATA\"Microsoft\teams\gpucache" | Remove-Item -Recurse -Force
    Get-ChildItem -Path $env:APPDATA\"Microsoft\teams\Indexeddb" | Remove-Item -Recurse -Force
    Get-ChildItem -Path $env:APPDATA\"Microsoft\teams\Local Storage" | Remove-Item -Recurse -Force
    Get-ChildItem -Path $env:APPDATA\"Microsoft\teams\tmp" | Remove-Item -Recurse -Force
 
}
catch{
echo $_
}
 
write-host "The Microsoft Teams cache has been successfully cleared."
