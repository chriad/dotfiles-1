PROMPT='%(?,%{$fg[green]%},%{$fg[red]%}) : '
# Vi mode display
function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[blue]%} : %{$reset_color%}"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} %{$fg[white]%}%2~$(git_prompt_info)"
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} +%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[red]%} x%{$fg[yellow]%}"
