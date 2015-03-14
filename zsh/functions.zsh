function new-tmux-from-dir-name {
  tmux new-session $1 -As `basename $PWD`
}

function g {
  if [[ $# > 0 ]]; then
    git $@
  else
    git st -sb
  fi
}

function deploy {
  git checkout dev
  git pull origin dev
  git checkout master
  git pull origin master
  git merge dev --no-edit --no-ff
  git push origin master
  git checkout -
}
