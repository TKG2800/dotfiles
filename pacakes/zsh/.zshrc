source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
FPATH=/opt/homebrew/share/zsh-completions:$FPATH
FPATH=/opt/homebrew/share/zsh/site-functions:$FPATH

autoload -Uz compinit
compinit
eval "$(starship init zsh)"
alias ls='lsd'
alias cat='bat'
alias tree='lsd --tree'
alias ll='ls -l'
eval "$(zoxide init zsh)"
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"
export PATH="$HOME/.local/bin:$PATH"
export PATH=$PATH:/Users/iwamatsutakumi/go/bin
