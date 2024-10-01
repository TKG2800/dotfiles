# Dotfilesのディレクトリを指定
if [[ -z "${DOTFILES_HOME}" ]]; then
  DOTFILES_HOME="$HOME/dotfiles"
fi
export DOTFILES_ZSH_HOME=${DOTFILES_HOME}/packages/zsh
eval "$(/opt/homebrew/bin/brew shellenv)"
# ssh settings
source "${DOTFILES_ZSH_HOME}/.zshrc.settings"
# check_update_dotfiles
source "${DOTFILES_ZSH_HOME}/.zshrc.check_update_dotfiles"
#Replace "ls" with "lsd"
source "${DOTFILES_ZSH_HOME}/.zshrc.lsd"
#Replace "cat" with "bat"
source "${DOTFILES_ZSH_HOME}/.zshrc.bat"
# alias cat='bat'
# alias ls='lsd'
# alias ll='ls -al'
# alias tree='lsd --tree'

