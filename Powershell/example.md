### Check OS

$version = [Environment]::OSVersion.Version

if ($version.Major -ne 10 -or $version.Build -lt 17134) {
    throw "This package requires Windows 10 v1803 or later."
}


### Check 64bit
if (-not [Environment]::Is64BitOperatingSystem) {
    throw "This package requires a 64-bit Windows."
}

### Enable WSL
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux

### Install LxRunOffline

$packageName = 'lxrunoffline'
$url = 'https://github.com/DDoSolitary/LxRunOffline/releases/download/v3.4.0/LxRunOffline-v3.4.0.zip'

$unzipLocation = Join-Path (Get-ToolsLocation) $packageName

### Check lxrunoffline exit? or remove
if (Test-Path $unzipLocation) {
    rm -Recurse $unzipLocation
}

### Install with chocolatey
Install-ChocolateyZipPackage -PackageName $packageName -Url $url -UnzipLocation $unzipLocation -Checksum '720E5575953A5E8C1376764D5541E21B139573330053F866AA5540DFA5FDDD95' -ChecksumType 'sha256'

### Add PATH to system
Install-ChocolateyPath -PathToInstall $unzipLocation -PathType 'Machine'

### 
$unzipLocation = Join-Path $Env:ChocolateyToolsLocation 'lxrunoffline'

if (Test-Path $unzipLocation) {
    rm -Recurse $unzipLocation
}
