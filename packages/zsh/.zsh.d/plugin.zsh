
### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk
## command completion
zinit ice wait'0'; zinit light zsh-users/zsh-completions
autoload -Uz compinit &&  compinit
## completion match up or low
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
## list of completion select tab or arrow
zstyle ':completion:*:default' menu select=1
## syntax highlighting
zinit light zsh-users/zsh-syntax-highlighting
## history completion
zinit light zsh-users/zsh-autosuggestions
zinit light olets/zsh-abbr
zinit load zdharma-continuum/history-search-multi-word

zinit self-update
