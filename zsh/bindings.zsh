# vi mode for zsh (http://dougblack.io/words/zsh-vi-mode.html)
bindkey -v
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word # ctrl-w removed word backwards
bindkey '^I' complete-word # complete on tab, leave expansion to _expand
bindkey '^R' history-incremental-search-backward # command R works under tmux
function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]% %{$reset_color%}"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select
