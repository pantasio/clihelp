## Install WSL 2        

To install the Windows Subsystem for Linux 2 (WSL 2), you need to follow these tasks.       

* Enable the Windows Subsystem for Linux Optional feature (WSL 1 and WSL 2)     

* Install a distro for the Windows Subsystem for Linux      

* Enable the ‘Virtual Machine Platform’ optional feature (WSL 2)        

* Configure the distro to use WSL 2     

### Enable the Windows Subsystem for Linux      
To run the WSL on Windows 10 you will need to install the optional feature:     

```
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux        
```

### Install a Linux distro for the Windows Subsystem for Linux      
Maybe we use LxRunOffline to run multi WSL      
### Enable the Virtual Machine Platform feature     
```PowerShell
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform
```
