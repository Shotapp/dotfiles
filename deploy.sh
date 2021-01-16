#!/usr/bin/env zsh

SCRIPT_DIR=$(cd $(dirname $0); pwd)

echo $SCRIPT_DIR

# ./config/ 以下の各ファイルのシンボリックリンクを ~/ 以下に貼る
IFS=$'\n' # for-in delimiter を改行のみにする
for FILE in `find config -type f | sed "s/config\///"`; do 
  mkdir -p ~/$(dirname ${FILE})
  ln -snfv ${SCRIPT_DIR}/config/${FILE} ~/${FILE}
done
IFS=$' \t\n'

source ~/.zshrc
