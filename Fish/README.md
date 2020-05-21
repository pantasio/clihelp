<!--  this is some usefull commend.
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set tabstop=4                       " ┐
set softtabstop=4                   " │ Set global <TAB> settings.
set shiftwidth=4                    " │
set expandtab                       " ┘

-->

### Autocomple Fish
run this command in fish to pull autocomple
```
fish_update_completions
```
Key bind in fish

Ctrl a + shift r reload config.fish


ef ............. edit config.fish       
rf ............. reload config.fish     
ev ............. edit nvim      
rv ............. reload nvim        
et ............. edit tmux      
eg ............. edit git       

helpf .......... help document for Fish     
helpv .......... help document for Vim      
helpt .......... help document for Tmux     
helpv .......... help document for Nvim     

addeditorconfig  add .editorconfig to new project

chpwd .......... goto home dir and list file







### Add new path        
set -U fish_user_paths [your-path-add] $fish_user_paths     

EX:     
set -U fish_user_paths /usr/local/bin $fish_user_paths
