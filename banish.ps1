
$banish = Read-Host -Prompt "Which package would you like to uninstall?"

Remove-Item -LiteralPath $banish -Force -Recurse
del "$($banish).ps1"
