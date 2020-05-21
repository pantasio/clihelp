## List of distro  
```
wsl -l -v
```
Or  
```
LxRunOffline l
```


## Install distribution  

```
$ LxRunOffline.exe i -n ubuntuAlpha -d D:\Runing-WSL\UbuntuAlpha -f D:\ISO\WSL\ubuntu-18.04-server-cloudimg-amd64-root-20191021.tar.xz -s  
```

i   Install distro  
-n  ubuntuAlpha     <Name-of-distro>  
-d  D:\Runing-WSL\UbuntuAlpha       #Save distro location - Dont need create first - Dont need "\" at the end
-f  D:\ISO\WSL\ubuntu-18.04-server-[longname].tar.xz     Where image to install  
-s  create shortcut to desktop  #Option
-v  version ( =2 )

## Run distribution

$ LxRunOffline r -n ubuntuAlpha


## Run normal user in WSL

adduser [name-of-user]  
gpasswd -a [name-of-user] sudo  

login to WSL to know uid  
login [name-of-user]  
id  

Now setting user login when we start WSL  
LxRunOffline su -n [Ubuntu-name-of-WSL] -v [UID]  

example:  
adduser bungbu  
gpasswd -a bungbu sudo  

login bungbu  
id  
LxRunOffline su -n ubuntuAlpha -v 1000   

## Uninstall  

lxrunoffline ui -n <name-of-distro>

## Move  
```
lxrunoffline m -n [distro-name you got from lxrunoffline list] -d [where you want the distro to go]  
```



######  
#### I dont have test yet  
##### Backup instance configs  

export registry at  

* Computer\HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Lxss\<Distro ID>, you could check DistributionName and find out which one is the correct ID.  

* LxRunOffline has export config option, but I haven’t tried importing it back yet:
```
LxRunOffline ec -n Ubunto -f Ubuntu.xml
```

#''''''''''''''''''''''''''''''''''''''''
# BACKUP WSL
#''''''''''''''''''''''''''''''''''''''''

#The WSL must be stopped so no open shells for that specific WSL that we will backup.
PS C:\wsl> .\LxRunOffline.exe export -n Ubuntu -f c:/tmp/Ubuntu.tar.gz
                                           |                |
                                           |                |____________ Location of your backup
                                           |
                                           |_____________________________ Name of WSL that you wanna backup, USE 'LxRunOffline -l' to know name


#''''''''''''''''''''''''''''''''''''''''
# INSTALL MULTI WSL or RESTORE
#''''''''''''''''''''''''''''''''''''''''

PS C:\wsl> .\LxRunOffline.exe install -n ubuntu1 -d C:\wsl\ubuntu1 -f d:\bkp\Ubuntu.tar.gz
                                             |            |                       |
                                             |            |                       |________________ location and name of your WSL backup .tar file
                                             |            |  
                                             |            |_________________ Install when location is new, Restore when location is the same
                                             |
                                             |_______________ Name of new WSL - Make sure unique name




























