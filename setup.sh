#!/bin/sh

# /* <<<<<<<<<<<<<<<<<<<<<<<<<<<<<
#  * LETS SUDO
# /* >>>>>>>>>>>>>>>>>>>>>>>>>>>>>
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


# /* <<<<<<<<<<<<<<<<<<<<<<<<<<<<<
#  * INSTALL HOMEBREW AND STUFF
# /* >>>>>>>>>>>>>>>>>>>>>>>>>>>>>
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update
brew tap homebrew/bundle
brew install antigen
brew install bat
brew install coreutils
brew install ffmpeg
brew install git
brew install grep
brew install htop
brew install imagemagick
brew install node
brew install tmux
brew install tree
brew install wget
brew install youtube-dl
brew install z
brew install zsh
brew install zsh-completions
brew install --cask dropshare
brew install --cask hyper
brew install --cask fantastical
brew install --cask google-backup-and-sync
brew install --cask google-chrome
brew install --cask imageoptim
brew install --cask sketch
brew install --cask spotify
brew install --cask the-unarchiver
brew install --cask tower
brew install --cask visual-studio-code
brew install --cask wavebox
brew install --cask setapp


# /* <<<<<<<<<<<<<<<<<<<<<<<<<<<<<
#  * NODE VERSION MANAGER
# /* >>>>>>>>>>>>>>>>>>>>>>>>>>>>>
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash


# /* <<<<<<<<<<<<<<<<<<<<<<<<<<<<<
#  * OH MY ZSH
# /* >>>>>>>>>>>>>>>>>>>>>>>>>>>>>
curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash


# /* <<<<<<<<<<<<<<<<<<<<<<<<<<<<<
#  * SYS LINKS
# /* >>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# .zshrc
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/config/.zshrc $HOME/.zshrc

# vim stuff
rm -rf $HOME/.vimrc
ln -s $HOME/.dotfiles/config/.vimrc $HOME/.vimrc
mkdir $HOME/.vim/
mkdir $HOME/.vim/backups
mkdir $HOME/.vim/swaps
mkdir $HOME/.vim/undo

# zsh theme
ln -s $HOME/.dotfiles/misc/michaelzoidl.zsh-theme $HOME/.oh-my-zsh/themes/michaelzoidl.zsh-theme

# vs code config
rm -rf $HOME/Library/Application Support/Code/User/settings.json
ln -s $HOME/.dotfiles/config/vsconfig.json $HOME/Library/Application Support/Code/User/settings.json

# hyper
rm -rf $HOME/.hyper.js
ln -s $HOME/.dotfiles/config/.hyper.js $HOME/.hyper.js