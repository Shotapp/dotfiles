# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Path to your oh-my-zsh installation.
export ZSH="~/.oh-my-zsh"
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in `\find ../.zsh/. -name '*.zsh'`; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
