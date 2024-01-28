export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(z)
source $ZSH/oh-my-zsh.sh

DOTFILES_PATH="$(dirname "$0")"

source $DOTFILES_PATH/aliases.sh
