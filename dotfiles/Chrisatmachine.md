Setup Neovim like an IDE - www.youtube.com/watch?v=65Wq4fjREUU

step1 FINISH
----------------------------------------------
Neovim - Installing Plugins with Vim-Plug - https://www.youtube.com/watch?v=QB9V__3VO2s
----------------------------------------------

https://www.chrisatmachine.com/Neovim/01-vim-plug/

mkdir -p ~/dotfiles/.config/nvim
cd dotfiles
git flow init -d

touch ~/dotfiles/.config/nvim/init.vim
ln -s ~/dotfiles/.config/nvim/init.vim ~/.config/nvim/init.vim


curl -fLo ~/dotfiles/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir -p ~/.config/nvim/autoload
ln -s ~/dotfiles/.config/nvim/autoload/plug.vim ~/.config/nvim/autoload/plug.vim

mkdir -p ~/dotfiles/.config/nvim/vim-plug
touch ~/dotfiles/.config/nvim/vim-plug/plugins.vim
mkdir -p ~/.config/nvim/vim-plug
ln -s ~/dotfiles/.config/nvim/vim-plug/plugins.vim ~/.config/nvim/vim-plug/plugins.vim

Open Nvim and run :PlugUpdate

step2 NOT FINISH
----------------------------------------------
 ~/.config/nvim/general/settings.vimNeovim Setting up the basics 
https://www.chrisatmachine.com/Neovim/02-vim-general-settings/

mkdir -p ~/dotfiles/.config/nvim/general
mkdir -p ~/.config/nvim/general

touch ~/dotfiles/.config/nvim/general/settings.vim
ln -s ~/dotfiles/.config/nvim/general/settings.vim ~/.config/nvim/general/settings.vim


mkdir -p ~/.config/nvim/keys
mkdir -p ~/dotfiles/.config/nvim/keys

touch ~/dotfiles/.config/nvim/keys/mappings.vim
ln -s ~/dotfiles/.config/nvim/keys/mappings.vim ~/.config/nvim/keys/mappings.vim

# Add into init.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim



----------------------------------------------
copy and paste  - the most inportant
----------------------------------------------
Getting Copy / Paste to Work in WSL with tmux and Terminal Vim
www.youtube.com/watch?v=_MgrjgQqDcE

- tmux-yank: https://github.com/tmux-plugins/tmux-yank
- VcXsrv: https://sourceforge.net/projects/vcxsrv/
- Dotfiles: https://github.com/nickjj/dotfiles

  First config tmux-plugins/tpm
    git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm

  Add tmux-plugins/tmux-yank
    mkdir -p ~/dotfiles/.config/tmux/
    touch ~/dotfiles/.config/tmux/.tmux.conf
    ln -s ~/dotfiles/.config/tmux/.tmux.conf ~/.tmux.conf

    Add contend to the bottom of .tmux.conf:

# Let Tmux Plugin Manager plugin at bottom of config file
# edit

#########################################################

# Tmux Plugin Manager


# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'tmux-plugins/tmux-resurrect'
set -g @plugin 'tmux-plugins/tmux-continuum'
set -g @plugin 'tmux-plugins/tmux-yank'

# Other examples:
# set -g @plugin 'github_username/plugin_name'
# set -g @plugin 'git@github.com/user/plugin'
# set -g @plugin 'git@bitbucket.com/user/plugin'


# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run -b '~/.config/tmux/plugins/tpm/tpm'

########################################################      

  Install tmp plugins:
    tmux source-file ~/.tmux.conf
    ctrl+a shift+i




step3
----------------------------------------------
Essential Settings for Neovim https://www.youtube.com/watch?v=gZCXaF-Lmco
----------------------------------------------
https://www.chrisatmachine.com/Neovim/02-vim-general-settings/

mkdir ~/.config/nvim/general
touch ~/.config/nvim/general/settings.vim

mkdir ~/.config/nvim/keys
touch ~/.config/nvim/keys/mappings.vim




----------------------------------------------
Neovim - Setting Up VSCode Intellisense with CoC [LSP] https://www.youtube.com/watch?v=OXEVhnY621M
----------------------------------------------
https://www.chrisatmachine.com/Neovim/04-vim-coc/

# Install latest nodejs
curl --fail -LSs https://install-node.now.sh/latest | sudo sh
export PATH="/usr/local/bin/:$PATH"

# for neovim
mkdir -p ~/.local/share/nvim/site/pack/coc/start
cd ~/.local/share/nvim/site/pack/coc/start
curl --fail -L https://github.com/neoclide/coc.nvim/archive/release.tar.gz | tar xzfv -

# Install extensions

mkdir -p ~/.config/coc/extensions
cd ~/.config/coc/extensions

if [ ! -f package.json  ]
then
  echo '{"dependencies":{}}'> package.json
fi
# Change extension names to the extensions you need
npm install coc-snippets --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
sudo npm install -g neovim


----------------------------------------------
INSTALL PYTHON AND NODEJS
----------------------------------------------
Readmore: https://dev.to/hymanzhan/setting-up-wsl-2-for-web-development-3202

Install python3
-----
## miniconda is tool manage python package and version

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

Run in bash:
sh ./Miniconda3-latest-Linux-x86_64.sh
conda install python=3.8
rm ~/Miniconda3-latest-Linux-x86_64.sh

Install NodeJS
-----
# nvm is tool manage version

wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# and add the nvm-related scripts to your .zshrc

nvm install --lts

After install python3 and NodeJS
-----
IF ERROR IN FISHSHELL WE MUST PORT TO init.fish


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/bungbu/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/bungbu/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/bungbu/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/bungbu/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# >>> NVM init config >>>
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \.
"$NVM_DIR/bash_completion"  # This loads nvm
bash_completion
# <<< NVM init config <<<

install package for Neovim
-----
npm install -g neovim

















----------------------------------------------
Neovim - Code Faster with Snippets https://www.youtube.com/watch?v=ebrEY-6EwXI











#git dotfiles

~/.config/nvim/init.vim
~/.config/nvim/autoload/plug.vim
~/.config/nvim/vim-plug/plugins.vim
~/.config/nvim/general/settings.vim
~/.config/nvim/keys/mappings.vim
~/.config/nvim/plug-config/coc.vim
~.config/nvim/general/paths.vim
