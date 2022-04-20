# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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
zplug romkatv/powerlevel10k, as:theme, depth:1

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

# NeoVim alias
alias vim='nvim'

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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dave/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/dave/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/dave/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/dave/google-cloud-sdk/completion.zsh.inc'; fi
