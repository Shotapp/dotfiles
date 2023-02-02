#!/usr/bin/env bash

# brew(arm)
export PATH=/opt/homebrew/bin:$PATH

# kube@wantedly
export PATH=$HOME/.wantedly/bin:$PATH

# xcode-install
export XCODE_INSTALL_USER="shota.kashihara@paypay-corp.co.jp"

# Xcode
export XCODE_APP=$(xcode-select -p)/../../

# valec
export GOPATH=$HOME
export PATH=$PATH:$GOPATH/bin:$GOPATH/src/github.com/dtan4/valec/bin

# Android Studio
# export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
# adb
export PATH=$PATH:~/Library/Android/sdk/platform-tools:~/Library/Android/sdk/tools

alias s2bash="source ~/.zshrc"

# rbenv PATH
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# pyenv
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
export PATH=$PYENV_ROOT/shims:$PATH
eval "$(pyenv init -)"

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# Swift AST
export PATH=$HOME/Documents/git/swift-ast/.build/release:$PATH

# nodenv
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

# Postgres
export PATH=/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# grpcurl
export PATH=$HOME/.grpcurl/bin:$PATH

# history
HISTFILE=$HOME/.zsh-history
HISTSIZE=100000
SAVEHIST=1000000

# share .zshhistory
setopt inc_append_history
setopt share_history

# Java 11
export PATH=$PATH:/Library/Java/JavaVirtualMachines/temurin-11.jdk/Contents/Home/bin
export JAVA_HOME=/Library/Java/JavaVirtualMachines/temurin-11.jdk/Contents/Home
## Java 8
# export PATH=$PATH:/Library/Java/JavaVirtualMachines/temurin-8.jdk/Contents/Home/bin
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/temurin-8.jdk/Contents/Home

export ANDROID_SDK_ROOT=~/Library/Android/sdk