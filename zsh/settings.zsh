setopt HIST_IGNORE_SPACE
#
# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-solarized.light.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

## Nvm
export NVM_DIR="/Users/maxmurdoch/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
