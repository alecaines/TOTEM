cd C:/cmdlets

$packages = (dir *.ps1).Name

Write-Host $packages
echo $packages > "C:/cmdlets/packages.txt"
