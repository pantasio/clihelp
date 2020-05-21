#!/bin/sh
#
# Setup a work space called `work` with two windows
# first window has 3 panes.
# The first pane set at 65%, split horizontally, set to api root and running vim
# pane 2 is split at 25% and running redis-server
# pane 3 is set to api root and bash prompt.
# note: `api` aliased to `cd ~/path/to/work`
#
########  Create New windows with a name #######################################
# create a new window called Tmux
# remember change number of windows
#tmux new-window -t $session:2 -n Tmux


# Split pane 1 horizontal by 50%,
#tmux splitw -h -p 50
#tmux send-keys "helpt" C-m


# Run sleep 0.1 to make sure the command finish
#sleep 0.1

# Select pane 2
#tmux selectp -t 1
#tmux send-keys "et" C-m
#sleep 0.1

#######################################################


session="work"


# set up tmux
#tmux start-server


# create a new tmux session, starting vim from a saved session in the new window
tmux new-session -d -s $session -n pls-save-me #"vim -S ~/.vim/sessions/kittybusiness"


# Select pane 1, set dir to api, run vim
#tmux selectp -t 1
#tmux send-keys "api;vim" C-m


# Split pane 1 horizontal by 65%, start redis-server
tmux splitw -h -p 35
#tmux send-keys "redis-server" C-m


# Select pane 2
tmux selectp -t 2

# Split pane 2 vertiacally by 25%
tmux splitw -v -p 75


# select pane 3, set to api root
tmux selectp -t 3
#tmux send-keys "api" C-m


# Select pane 1
tmux selectp -t 1

########  Tmux #######################################
# create a new window called Tmux
# remember change number of windows
tmux new-window -t $session:2 -n Tmux

# Split pane 1 horizontal by 50%, start redis-server
tmux splitw -h -p 50
tmux send-keys "helpt" C-m
sleep 0.1


# Select pane 2
tmux selectp -t 1
tmux send-keys "et" C-m
sleep 0.1

#######################################################


########  Nvim #######################################
# create a new window called Tmux
# remember change number of windows
tmux new-window -t $session:3 -n Nvim

# Split pane 1 horizontal by 50%, start redis-server
tmux splitw -h -p 50
tmux send-keys "helpv" C-m
sleep 0.1


# Select pane 2
tmux selectp -t 1
tmux send-keys "ev" C-m
sleep 0.1

#######################################################

########  Git #######################################
# create a new window called Git
# remember change number of windows
tmux new-window -t $session:4 -n Git

# Split pane 1 horizontal by 50%, start redis-server
tmux splitw -h -p 50
tmux send-keys "helpg" C-m
sleep 0.1


# Select pane 2
tmux selectp -t 1
tmux send-keys "eg" C-m
sleep 0.1

#######################################################

########  Fish #######################################
# create a new window called Fish
# remember change number of windows
tmux new-window -t $session:5 -n Fish

# Split pane 1 horizontal by 50%, start redis-server
tmux splitw -h -p 50
tmux send-keys "helpf" C-m
sleep 0.1


# Select pane 2
tmux selectp -t 1
tmux send-keys "ef" C-m
sleep 0.2

#######################################################

########  FileManager #######################################
# create a new window called Fish
# remember change number of windows
tmux new-window -t $session:6 -n FileManager

# Split pane 1 horizontal by 50%, start redis-server
tmux splitw -h -p 50
tmux send-keys "" C-m
sleep 0.1


# Select pane 2
tmux selectp -t 1
tmux send-keys "nvim" C-m
sleep 0.2

#######################################################



# return to main vim window
tmux select-window -t $session:1


# Finished setup, attach to the tmux session!
tmux attach-session -t $session
