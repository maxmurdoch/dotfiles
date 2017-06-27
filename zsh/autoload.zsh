autoload -U compinit
autoload zmv
compinit

autoload -U promptinit && promptinit
prompt pure

if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi

autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use
  elif [[ $(nvm version) != $(nvm version default)  ]]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc
