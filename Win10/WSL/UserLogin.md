adduser [name-of-user]  
gpasswd -a [name-of-user] sudo  

### login to WSL to know uid  
login [name-of-user]  
id  

## Now setting user login when we start WSL  
LxRunOffline su -n [Ubuntu-name-of-WSL] -v [UID]  
