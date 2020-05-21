## Set WSL distro to use version 2      
After you completed the first two steps, you will need to configure the distro to use WSL 2. Run the following command to list the available distros in PowerShell:     
```
wsl -l -v
```
To set a distro to WSL 2 you can run the following command:     
```
wsl --set-version DistroName 2
```
You can also set WSL 2 as the default:      
```
wsl --set-default-version 2
```

