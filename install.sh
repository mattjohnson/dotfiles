#! /bin/bash

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

#OSX Command line tools
xcode-select --install

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle Brewfile

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

curl -s get.sdkman.io | zsh
sdk install groovy
sdk install gradle
sdk install kotlin

#open -a Dropbox
