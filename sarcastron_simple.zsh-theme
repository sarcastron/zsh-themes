# Mostly taken from Cloud (https://github.com/robbyrussell/oh-my-zsh/wiki/themes#cloud)
# and from GNZH (https://github.com/robbyrussell/oh-my-zsh/wiki/themes#cloud)

# make some aliases for the colours: (could use normal escape sequences too)
for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE; do
  eval PR_$color='%{$fg[${(L)color}]%}'
done

# Some other emoticons for quick reference: 🚦 🚧 💣 🤖 🐕💨 🚀 🐳 🐼 💗 🐙 🦄 😀 💖 💜 🍺 👾 💣 💥
PROMPTS_ARRAY=(🚀 🐼 🐳 🦄 🐙)
ZSH_THEME_PREFIX=${PROMPTS_ARRAY[$RANDOM%$#PROMPTS_ARRAY+1]}

#ZSH_THEME_PREFIX='🚀'

local return_code="%(?..%{$PR_RED%}%?%{$PR_NO_COLOR%})"

PROMPT='%{$fg_bold[cyan]%}$ZSH_THEME_PREFIX %{$fg_bold[green]%}%p %{$fg[green]%}%c %{$fg_bold[cyan]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}[%{$fg[yellow]%}  %{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}] %{$fg[yellow]%}🚧 %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}]"
RPS1="${return_code}"
