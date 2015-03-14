
#   .bashrc

#   Max Alfie Murdoch
#   maxalfiemurdoch@gmail.com
#   http://maxalfiemurdo.ch 



# Start tmux at every session
# if which tmux 2>&1 >/dev/null; then
#   if [ $TERM != "screen-256color" ] && [  $TERM != "screen" ]; then
#     tmux attach -t hack || tmux new -s hack; exit
#   fi
# fi


###########
# Options #
###########

# Autocorrect typos when using `cd`
shopt -s cdspell;



#########
# rbenv #
#########
eval "$(rbenv init - zsh)"



#########
# Paths #
#########

#PATH="node_modules/.bin:.bundle/binstubs:$HOME/local/node/bin:$PATH"
# Add CLI tools installed using Homebrew to $PATH
PATH="$HOME/local/node/bin:$PATH"

# Edit bash prompt
PS1="\u@\h\n\W \$ "



#########
# Alias #
#########

alias dropbox_gc="cd ~/Dropbox\ \(GoCardless\)"
alias dropbox_personal="cd ~/Dropbox\ \(Personal\)"
alias mysite="cd ~/Dropbox\ \(Personal\)/Sites/maxalfiemurdo.ch"
alias grep="grep --color"
alias clr="clear"

# Coloured output for `ls`
alias ls="ls --color=tty"
alias ls.="ls -d .* --color=tty"
alias lsa="ls -a --color=tty"
alias lsl="ls -l --color=tty"
alias lsal="ls -al --color=tty"



###########
# Exports #
###########

export PATH=/usr/local/sbin:$PATH
