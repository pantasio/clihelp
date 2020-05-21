### Make sure you run all command in PowerShell Core v6 with Admin

## Install Chocolatey
```
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```
## Install Windows Terminal 
```
choco install microsoft-windows-terminal -y
```

## Setup WSL2
```
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform

wsl --set-default-version 2
```
## Install Ubuntu 18.04 in windows store

## Install LxRunOffline
```
choco install lxrunoffline
```

### Add new PATH
$env:Path += ";C:\Program Files\GnuWin32\bin"
