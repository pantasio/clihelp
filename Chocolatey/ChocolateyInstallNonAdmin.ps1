
# Installing a particular version of Chocolatey
# Releases info https://github.com/chocolatey/choco/releases
# Releases Jun 4 2019
$env:chocolateyVersion = '0.10.15'

# Set directory for installation - Chocolatey does not lock
# down the directory if not the default
# We must change InstallDir
# Example
# $InstallDir='C:\ProgramData\chocoportable'

$InstallDir='D:\Chocoportable'
$env:ChocolateyInstall="$InstallDir"

# If your PowerShell Execution policy is restrictive, you may
# not be able to get around that. Try setting your session to
# Bypass.
Set-ExecutionPolicy Bypass -Scope Process -Force;

# All install options - offline, proxy, etc at
# https://chocolatey.org/install
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))


#################################
# Example packages We can Install

#choco install puppet-agent.portable -y
#choco install ruby.portable -y
#choco install git.commandline -y

# pick an editor
#choco install visualstudiocode.portable -y # not yet available
#choco install notepadplusplus.commandline -y
#choco install nano -y
#choco install vim-tux.portable

# What else can I install without admin rights?
# https://chocolatey.org/packages?q=id%3Aportable
