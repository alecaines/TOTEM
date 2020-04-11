#Takes a github repo as input and creates a shortcut to the repo

#### Summon what? ####
$url = Read-Host -Prompt "URL"

#### Parse repo string ####
$i = $url.LastIndexOf("/")
$reponame = $url.Substring($i+1)
$type = ".ps1"

#### Construct cmdlet name ####
$cmdletname = "C:/cmdlets/$($reponame)$($type)"


#### See if repo exists ####
 Try{
 	Write-Verbose "Cloning..."
	$cwd= (Get-Location).path
	cd C:/cmdlets
 	git clone $url
	cd "$($cwd)"
 	Write-Verbose "Clone successful"
 }
 Catch{
	Write-Warning "$($reponame) is already installed. Run $($cmdletname)"
	BREAK
}

#### Write cmdlet name ####
echo > $cmdletname
dir $reponame/*.ps1
""
$ps = Read-Host -Prompt "Choose one of the above to execute (minus extension)"

### Write main name###
echo "./C:/cmdlets/$($reponame)/$($ps)$($type)" >> "$cmdletname"
