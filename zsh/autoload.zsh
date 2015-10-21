autoload -U compinit
autoload zmv
compinit

autoload -U promptinit && promptinit
prompt pure

if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi
