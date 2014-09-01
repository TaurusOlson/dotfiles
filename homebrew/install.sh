#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
    echo "  x You should probably install Homebrew first:"
    echo "    https://github.com/mxcl/homebrew/wiki/installation"
    exit
else
    echo "  + Homebrew found."
    echo "    Updating..."
    brew update

    echo "    Installing formulae..."
    brew install ack
    brew install tmux
    brew install hub
    brew install rbenv
    brew install mpd
    brew install mpc
    brew install ctags
fi

