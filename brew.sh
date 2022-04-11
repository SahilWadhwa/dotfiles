#!/usr/bin/env bash

# Install Brew Packages
#brew install python
brew install tree
brew install awscli
brew install asdf
brew install pyenv

mkdir ~/.nvm
brew install nvm

# Install MacOS Applications
CASKS=(
    google-chrome
    microsoft-edge
    firefox
    sublime-text
#    virtualbox
    sourcetree
    spotify
#    discord
    google-backup-and-sync
#    skype
#    gimp
    vlc
    hyperdock
    font-source-code-pro
    font-fira-code
    visual-studio-code
    docker
    # https://www.youtube.com/watch?v=NdtRKvz9iwE
    # Replace spotlight with alfred
    alfred
    1password
    macdown
    divvy
    zoom
    lens


    #https://www.youtube.com/watch?v=hIDg3X4cd_8
    rectangle
    bettertouchtool
)

for app in "${CASKS[@]}"
do
   echo "brew install $app on your MacOS."
   brew install --cask $app &>/dev/null
done

# Install Source Code Pro Font
brew tap homebrew/cask-fonts