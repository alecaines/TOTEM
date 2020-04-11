$banish = Read-Host -Prompt "Which package would you like to uninstall?"

rmdir $banish 
del "$($banish).ps1$"
