export DOTFILES="$HOME/dotfiles"

source $DOTFILES/zsh/bindings.zsh
source $DOTFILES/zsh/exports.zsh
source $DOTFILES/zsh/aliases.zsh
source $DOTFILES/zsh/functions.zsh
source $DOTFILES/zsh/settings.zsh
source $DOTFILES/secret
source /usr/local/opt/autoenv/activate.sh
source $DOTFILES/zsh/autoload.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
