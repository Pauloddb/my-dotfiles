# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""  # Desativado - usando Starship
plugins=(git zsh-autosuggestions zsh-syntax-highlighting history)
source $ZSH/oh-my-zsh.sh

# Starship prompt
eval "$(starship init zsh)"

# Path
export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.npm-global/bin:$PATH"
export PATH="$HOME/.pyenv/bin:$PATH"

# Tools init
eval "$(zoxide init zsh)"
eval "$(pyenv init -)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "$BUN_INSTALL/_bun" ] && source "$BUN_INSTALL/_bun"

# Project paths
export P_PATH="$HOME/programacao"
export JS_PATH="$P_PATH/javascript"
export TS_PATH="$P_PATH/typescript"
export GO_PATH="$P_PATH/go"
export PY_PATH="$P_PATH/python"
export RUST_PATH="$P_PATH/rust"
export QS_PATH="$P_PATH/quickshell"
export AGS_PATH="$P_PATH/ags"

# GCloud
export GOOGLE_CLOUD_PROJECT_ID=gemini-cli-482322

# Functions
[[ -f ~/.zsh_functions ]] && source ~/.zsh_functions

# Aliases
alias save="save_config"
alias cls='clear'
alias cc='create_cmd'
alias ls='lsd'
alias rb='restart_bar'
alias rd='restart_dock'
alias rbd='restart_bar_dock'
alias cd='z'
alias tsnap='take_snap'
alias i='yay -Sy'
alias s='yay -Ss'
