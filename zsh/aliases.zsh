# Misc
alias {v,vi,vim}="vim"
alias irb="irb --simple-prompt"
alias pry="pry --simple-prompt"
alias grep="grep --color"
alias clr="clear"
alias df="cd ~/dotfiles"
alias ctags=/usr/local/bin/ctags
alias k9="kill -9 "

# `ls`
alias {l,ls}="ls --color=tty"

# Git
alias g="git"

alias gs="git status -sb"
alias gst="git status"

alias ga="git add"
alias gaa="git add --all"
alias gap="git add -p"

alias gb="git branch"
lookup_branch() {
  gco $(git branch | fzf-tmux -d 15)
}
alias gbs=lookup_branch

alias gcl="git clone"

alias gpu="git push"

alias gpl="git pull"
alias gpo="git pull origin"

alias gco="git checkout"
alias gcob="git checkout -b"

alias gcm="git commit"
alias gcmm="git commit -m"
alias gcma="git commit --amend"

alias gd="git diff"
alias gds="git diff --staged"

alias gl="git log --pretty=format:\"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset\" --abbrev-commit"
alias glog="git log --oneline --decorate --color --graph"

alias gunstage="git reset HEAD"

alias gt="git tag"

alias gr="git rebase"
alias grc="git rebase --continue"
alias gra="git rebase --abort"

# Hub
alias hpr="hub pull-request"
alias ghb="hub browse"

# Bundle
alias b="bundle install"

# tmux
alias tns="tmux new-session -s"
alias tks="tmux kill-session -t"
alias ta="tmux attach -t"
alias tls="tmux ls"
alias tds="tmux detach"
