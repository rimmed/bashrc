local NEW_LINE=$'\n'
local ret_status="%(?::%{$fg_bold[red]%}[exit code: %?]${NEW_LINE}%{$reset_color%})"
PROMPT='${NEW_LINE}${ret_status}[%D{%H:%M}] %{$fg_bold[blue]%}%~%{$reset_color%} $(git_prompt_info)${NEW_LINE}$ '

case $TERM in
  xterm*)
    precmd () {print -Pn "\e]0;%~\a"}
    ;;
esac

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[magenta]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=")"
ZSH_THEME_GIT_PROMPT_CLEAN=")"


LIGHT_GREEN="\[\033[1;32m\]"
# Enable highlighters
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
