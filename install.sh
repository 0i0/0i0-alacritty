#!/bin/bash
brew install --cask alacritty
brew tap homebrew/cask-fonts
brew install --cask font-iosevka-ss08

# clone
git clone https://github.com/alacritty/alacritty.git
cd alacritty

# Install terminfo globally, I'm thinking this is to make the awesome
# true colors & italic fonts work
# We also change default terminal to alacritty in ~/.tmux.conf to use this
sudo tic -xe alacritty,alacritty-direct extra/alacritty.info
cd ..
rm -rf alacritty

# Enable smoothing on mac
defaults write -g CGFontRenderingFontSmoothingDisabled -bool NO
defaults -currentHost write -globalDomain AppleFontSmoothing -int 2

# Settings
ln -s $PWD $HOME/.config/alacritty