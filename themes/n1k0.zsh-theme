#!/usr/bin/env zsh

if [ "$(whoami)" = "root" ]; then CARETCOLOR="red"; else CARETCOLOR="magenta"; fi

local light_grey='\e[0;37m'
local return_code="%(?..%{$fg_bold[red]%}(%?%) %{$reset_color%})"

PROMPT='⚡ %{$fg_bold[$light_grey]%}%n%{$reset_color%}%{$fg[$white]%}@%{$reset_color%}%{$fg_bold[grey]%}%m%{$reset_color%} → ${return_code}%{${fg_bold[yellow]}%}%~%{$reset_color%}$(git_prompt_info)
%{${fg[$CARETCOLOR]}%}%{${reset_color}%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[green]%} ("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[green]%})%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_UNTRACKED="?"
ZSH_THEME_GIT_PROMPT_CLEAN=""
