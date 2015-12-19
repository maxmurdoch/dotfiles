export DOTFILES="$HOME/dotfiles"

source $DOTFILES/zsh/autoload.zsh
source $DOTFILES/zsh/bindings.zsh
source $DOTFILES/zsh/exports.zsh
source $DOTFILES/zsh/aliases.zsh
source $DOTFILES/zsh/functions.zsh
source $DOTFILES/zsh/settings.zsh
source $DOTFILES/secret
source /usr/local/opt/autoenv/activate.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
