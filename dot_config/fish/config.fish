alias icat "kitten icat"
alias ll "eza -l -g --icons --git --group-directories-first"
alias lla "eza -1 --icons --tree --git-ignore"
alias search "fzf --preview '\''bat --color=always --style=numbers --line-range=:500 {}'\'' | xargs nvim"

export EDITOR=nvim

export DENO_INSTALL=/Users/andy/.deno

starship init fish | source
zoxide init fish | source

# dune
source $HOME/.local/share/dune/env/env.fish

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /Users/andy/.ghcup/bin $PATH # ghcup-env