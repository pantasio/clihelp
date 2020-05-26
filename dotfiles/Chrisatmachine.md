Setup Neovim like an IDE - www.youtube.com/watch?v=65Wq4fjREUU

step1
----------------------------------------------
Neovim - Installing Plugins with Vim-Plug - https://www.youtube.com/watch?v=QB9V__3VO2s
----------------------------------------------

https://www.chrisatmachine.com/Neovim/01-vim-plug/

mkdir ~/.config/nvim
touch ~/.config/nvim/init.vim
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir ~/.config/nvim/vim-plug

touch ~/.config/nvim/vim-plug/plugins.vim


Open Nvim and run :PlugUpdate


step2
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
copy and paste
----------------------------------------------
Getting Copy / Paste to Work in WSL with tmux and Terminal Vim
https://www.youtube.com/watch?v=_MgrjgQqDcE

- tmux-yank: https://github.com/tmux-plugins/tmux-yank
- VcXsrv: https://sourceforge.net/projects/vcxsrv/
- Dotfiles: https://github.com/nickjj/dotfiles
















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
