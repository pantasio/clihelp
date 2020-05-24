$ rm -R /etc/pacman.d/gnupg/
$ rm -R /root/.gnupg/ 
$ gpg --refresh-keys
$ pacman-key --init && pacman-key --populate archlinux

# edit mirrorlist
$ nano /etc/pacman.d/mirrorlist

# fix error invalid or corrupted package (PGP signature)

# timezone
$ timedatectl set-timezone Asia/Ho_Chi_Minh

nvim /etc/locale.gen
/en_US
locale-gen

# Install git
$ pacman -S git fish neovim wget tmux

# Install git flow
$ wget -q  https://raw.githubusercontent.com/petervanderdoes/gitflow-avh/develop/contrib/gitflow-installer.sh && sudo bash gitflow-installer.sh install stable; rm gitflow-installer.sh

# Create new user

sed 's/# %wheel ALL=(ALL) NOPASSWD: ALL/%wheel ALL=(ALL) NOPASSWD: ALL/g' /etc/sudoers > /etc/sudoers.new

sed 's/# %wheel ALL=(ALL)/%wheel ALL=(ALL) NOPASSWD: ALL/g' /etc/sudoers > /etc/sudoers.new
export EDITOR="cp /etc/sudoers.new"
visudo
rm /etc/sudoers.new

#### Create a non-root user
useradd -m -g users -G wheel -s /bin/bash bungbu
passwd bungbu

# restart WSL
$ Get-Service LxssManager | Restart-Service


# install Fisher
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

# install bobthefish
fisher add oh-my-fish/theme-bobthefish
fisher add jethrokuan/z

pacman -S <package-name>        # Install 
pacman -Ss <package-name>       # Search

# check version
git version         # git version 2.26.2
git flow version    # 1.12.3 (AVH Edition)
nvim --version      # NVIM v0.4.3
fish --version      #fish, version 3.1.2
tmux -V             # tmux 3.1b


# Clean System

    ## Ubuntu
        $ sudo apt-get clean
        $ sudo apt-get autoremove
    ## ArchLinux
        $ cd /var/cache/pacman/pkg
        $ rm -rf *
    
