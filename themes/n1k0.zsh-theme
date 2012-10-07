ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[green]%} ("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_UNTRACKED="?"
ZSH_THEME_GIT_PROMPT_CLEAN=""

local light_grey='\e[0;37m'
local return_code="%(?..%{$fg_bold[red]%}(%?%) %{$reset_color%})"

PROMPT=' '
PROMPT=$PROMPT'%{$fg_bold[$light_grey]%}%n%{$reset_color%}'
PROMPT=$PROMPT'%{$fg[white]%}@%{$reset_color%}'
PROMPT=$PROMPT'%{$fg_bold[grey]%}%m%{$reset_color%} '
PROMTP=$PROMPT'→ ${return_code}'
PROMPT=$PROMPT'%{${fg_bold[yellow]}%}%~%{$reset_color%}'
PROMPT=$PROMPT'$(git_prompt_info)
'
if [ "$(whoami)" = "root" ]; then
    PROMPT=$PROMPT'%{${fg[red]}%}#%{${reset_color}%} %b';
else
    PROMPT=$PROMPT'%{${fg[white]}%}\$%{${reset_color}%} %b';
fi
