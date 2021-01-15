#!/usr/bin/env zsh

SCRIPT_DIR=$(cd $(dirname $0); pwd)

echo $SCRIPT_DIR

# ./config/ 以下の各ファイルのシンボリックリンクを ~/ 以下に貼る
for FILE in `find config -type f | sed "s/config\///"`; do 
  ln -snfv ${SCRIPT_DIR}/config/${FILE} ~/${FILE}
done

source ~/.zshrc
