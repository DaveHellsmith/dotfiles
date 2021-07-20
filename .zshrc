export EDITOR="nvim"

export ZPLUG_HOME=/opt/homebrew/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "lib/completion", from:oh-my-zsh
zplug "lib/history", from:oh-my-zsh
zplug "lib/key-bindings", from:oh-my-zsh
zplug "lib/termsupport", from:oh-my-zsh

zplug "plugins/git", from:oh-my-zsh
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/docker", from:oh-my-zsh
zplug "plugins/extract", from:oh-my-zsh
zplug "plugins/npm", from:oh-my-zsh
zplug "plugins/osx", from:oh-my-zsh

zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"

zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme

if ! zplug check; then
  zplug install
fi

zplug load

# Set exa aliases
alias ls='exa'                                                          # ls
alias l='exa -lbF --git'                                               # list, size, type, git
alias ll='exa -lbGF --git'                                              # long list
alias llm='exa -lbGd --git --sort=modified'                             # long list, modified date sort
alias la='exa -lbhHigUmuSa --time-style=long-iso --git --color-scale'   # all list
alias lx='exa -lbhHigUmuSa@ --time-style=long-iso --git --color-scale'  # all + extended list

# removing the git alias for the gitplugin
unalias g

# enables autojump for directory navigation
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

# enables fzf fuzzy searches
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# setting up rust environment variables
source $HOME/.cargo/env

# overriding the default folder for global npm packages
export PATH=~/.npm-global/bin:$PATH

# adding solana to path
export PATH="/Users/dave/.local/share/solana/install/active_release/bin:$PATH"

# Golang settings
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
