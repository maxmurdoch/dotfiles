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

function c {
  cd $(find ~/gc -type d -maxdepth 5 | fzf-tmux -d 15)
}

vpn () {
        local vpn="${1:-GoCardless}"
        local vpn_status=$(scutil --nc status $vpn | head -n1)
        if [[ "$vpn_status" = "Connected" ]]
        then
                echo "Already connected"
                return
        fi

        printf "Attempting to connect to VPN.."

        while [[ ! "$vpn_status" = "Connected" ]]
        do
                printf "."
                /usr/bin/env osascript >> /dev/null 2>&1 <<EOF
tell application "System Events"
  tell current location of network preferences
    set VPN to service "$vpn"
    if exists VPN then connect VPN
  end tell
end tell
EOF
                sleep 1
                vpn_status=$(scutil --nc status $vpn | head -n1)
        done
        printf "\n"
        echo "$vpn_status"
}
