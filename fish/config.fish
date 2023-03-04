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
alias lla "ls -la"

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
set -Ux ANDROID_HOME $HOME/Library/Android/sdk
set -U fish_user_paths $ANDROID_HOME/emulator $fish_user_paths
set -U fish_user_paths $ANDROID_HOME/tools $fish_user_paths
set -U fish_user_paths $ANDROID_HOME/tools-bin $fish_user_paths
set -U fish_user_paths $ANDROID_HOME/platform-tools $fish_user_paths

# fish_config theme choose "Catppuccin Mocha"

# Nightfox Color Palette
# Style: nightfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/nightfox/nightfox_fish.fish
set -l foreground cdcecf
set -l selection 2b3b51
set -l comment 738091
set -l red c94f6d
set -l orange f4a261
set -l yellow dbc074
set -l green 81b29a
set -l purple 9d79d6
set -l cyan 63cdcf
set -l pink d67ad2

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment

# Loading Rbenv
status --is-interactive; and rbenv init - fish | source


