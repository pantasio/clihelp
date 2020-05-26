this is archlinux update still 2020-05-25 ( pls dont delete with any reasons )
with :
    git version         # git version 2.26.2
        no config

    git flow version    # 1.12.3 (AVH Edition)
    
    nvim --version      # NVIM v0.4.3
        no config

    tmux -V             # tmux 3.1b
        no config

    fish --version      #fish, version 3.1.2
        no config

    fisher
        theme-bobthefish
        z
    NodeJS
        pacman -S nodejs npm

	node v12.16.3 (npm v6.14.4)
	Node Version Manager (v0.35.3)
	Node.js v14.3.0

    Python
        version 3.7

todo: make dotfile like Chrisatmachine https://www.youtube.com/channel/UCS97tchJDq17Qms3cux8wcA





















<!-- ------------------------------------------------- -->

### Stop WSL
	$ Get-Service LxssManager | Restart-Service
### Backup WSL
	before we backup WSL, create folder with NAME and README.md ( infomation of next WSL )
	$ LxRunOffline.exe export -n Arch -f D:/Runing-WSL/Arch-source/202005-source-archlinux-khongxoa/arch.tar.gz
	this solution is not work with Arch
	
	BESTWAY TO DO THIS IS:
	$ lxrunoffline d -n Arch -d D:/Runing-WSL/ArchTest -N archtest
	
### Restore WSL
    $ LxRunOffline.exe install -n <UNIQUE-name> -d D:/Runing-WSL/Arch -f D:/Runing-WSL/Arch-source/202005-source-archlinux-khongxoa/arch.tar.gz
                                     |                      |                       |
                                     |                      |                       |________________ location and name of your WSL backup .tar file
                                     |                      |
                                     |                      |_________________ Install when location is new, Restore when location is the same
                                     |
                                     |_______________ Name of new WSL - Make sure unique name

