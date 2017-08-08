#!/usr/bin/env bash

BASEDIR=${PWD}

echo "Installing…"

if test ! $(which brew); then
  echo "Installing Homebrew"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Installing brew packages." 
brew tap caskroom/cask
brew tap caskroom/versions
brew install brew-cask

echo "Updating brew." 
brew update
brew upgrade brew-cask

echo "Creating symbolic links."
ln -sf ${BASEDIR}/.bash_profile ~/

#source ./git
source ./java
#source ./maven
#source ./applications
#source ./dpp-network
source ~/.bash_profile

echo "Upgrading brew."
brew upgrade

echo "Cleaning up"
brew cleanup
brew cask cleanup
