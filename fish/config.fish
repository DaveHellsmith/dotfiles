if status is-interactive
    # Commands to run in interactive sessions can go here
end


set fish_greeting ""

set -gx TERM xterm-256color

# Aliases

# Set exa aliases
alias ls "exa"                                                          # ls
alias l "exa -lbF --git"                                               # list, size, type, git
alias ll "exa -lbGF --git"                                             # long list
alias llm "exa -lbGd --git --sort=modified"                            # long list, modified date sort
alias la "exa -lbhHigUmuSa --time-style=long-iso --git --color-scale"   # all list
alias lx "exa -lbhHigUmuSa@ --time-style=long-iso --git --color-scale" # all + extended list

# Git aliases
alias gst 'git status'
alias gco 'git checkout'

# NeoVim alias
command -qv nvim && alias vim nvim

set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH


# Global npm packages 
set -gx PATH $HOME/.npm-global/bin $PATH

# setting up rust environment variables
set -gx PATH "$HOME/.cargo/bin" $PATH

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

# React Native Android settings
set -Ux ANDROID_HOME $HOME/Android/Sdk
set -U fish_user_paths $ANDROID_HOME/emulator $fish_user_paths
set -U fish_user_paths $ANDROID_HOME/tools $fish_user_paths
set -U fish_user_paths $ANDROID_HOME/tools-bin $fish_user_paths
set -U fish_user_paths $ANDROID_HOME/platform-tools $fish_user_paths
