#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
  fi

fi


# Install homebrew casks
brew install --cask \
    iterm2 \
    atom \
    jetbrains-toolbox

# Install homebrew packages
brew install bash-completion \
             bat \
             python \
             the_silver_searcher \
             tree \
             fzf
             git \
             gpg \
             grc \
             htop \
             hub \
             gist \
             nmap \
             tmux \
             vim \
             jq \
             yq

brew tap jmespath/jmespath
brew install jmespath/jmespath/jp

# UNIX tools
brew install findutils \
             gnu-sed \
             gnu-tar \
             gnu-which \
             gnutls  \
             grep \
             coreutils \
             binutils \
             diffutils \
             gzip \
             watch \
             wget

exit 0

