#!/bin/sh

set -e
if [ ! -f /opt/homebrew/bin/brew ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homeebrew/install/master/install.sh)"
fi

if [ ! -d ~/dotfiles ]; then
   cd ~
   git clone git@github.com:TKG2800/dotfiles.git
fi
brew bundle -v --file=~/dotfiles/Brewfile

if [ ! -d ~/.config ]; then
  mkdir ~/.config
fi

stow  -v -d ~/dotfiles/pacakes -t ~ zsh starship alacritty nvim tmux vim neofetch lvim git
