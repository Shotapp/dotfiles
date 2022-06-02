#!/usr/bin/env bash

alias vbash="code ~/git/github.com/ShotaKashihara/dotfiles/"
alias vbashs="code ~/git/github.com/ShotaKashihara/dotfiles/config/.zsh/secrets.zsh"
alias vbashe="code ~/git/github.com/ShotaKashihara/dotfiles/config/.zsh/exports.zsh"
alias sbash="source ~/.zshrc"
alias xcode-install="echo '>> xcversion update; xcversion list'"
alias xcversion="echo 'See: https://developer.apple.com/download/more/'"
alias gitprune="git branch | grep -vE '^\*|master$|develop$' | xargs -I % git branch -D %"
alias xc="~/git/github.com/ShotaKashihara/xc/main.swift"