autoload -U compinit
autoload zmv
compinit
bindkey '^I' complete-word # complete on tab, leave expansion to _expand
bindkey '^R' history-incremental-search-backward # command R works under tmux
export DOTFILES="$HOME/dotfiles"

source $DOTFILES/secret

source $DOTFILES/zsh/aliases.zsh
source $DOTFILES/zsh/functions.zsh
source $DOTFILES/zsh/completion/t-completion.zsh
source $DOTFILES/zsh/completion/tmuxinator.zsh
source $DOTFILES/zsh/plugins/safe-paste.zsh
source $DOTFILES/zsh/pure.zsh
source /usr/local/opt/autoenv/activate.sh

if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi

###############
#   EXPORTS   #
###############

export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="$HOME/local/node/bin:$PATH"
export PATH="$HOME/.node_modules:$PATH"
export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="node_modules/.bin:$PATH"
export PATH=".bundle/binstubs:$PATH"
export PATH="./bin:$PATH"

export MANPATH="/usr/local/man:$MANPATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

export PKG_CONFIG_PATH="/opt/X11/lib/pkgconfig"

export ZSH="$HOME/.oh-my-zsh"
export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"
export NODE_PATH="/usr/lib/node_modules"
export MYVIMRC="$HOME/.vimrc"
export TERM=xterm-256color

# You may need to manually set your language environment
# export LANG=en_US.UTF-8
export EDITOR='vim'
export CHROME_BIN='/opt/homebrew-cask/Caskroom/google-chrome/latest/Google Chrome.app/Contents/MacOS/Google Chrome'

################
#   SETTINGS   #
################

HISTFILE=$HOME/.zhistory
HISTSIZE=20000
SAVEHIST=20000
setopt HIST_IGNORE_SPACE
#
# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-flat.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

## Nvm
export NVM_DIR="/Users/maxmurdoch/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
