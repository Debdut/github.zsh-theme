SYSTEM_THEME=Light

# Set System Theme on Mac OS
if [[ "$(uname -s)" == "Darwin" ]]; then
  SYSTEM_THEME=$(defaults read -g AppleInterfaceStyle 2>/dev/null)
fi

#Set System Theme on Linux
if [[ "$(uname -s)" == "Linux" ]]; then
  if [[ "$(gsettings get org.gnome.desktop.interface gtk-theme)" == *"dark"* ]]; then
    SYSTEM_THEME=Dark
  fi
fi

GREEN=41
MAGENTA=165
GREY=240
RED=160
BLUE=21
YELLOW=220
PRIMARY=234

if [[ $SYSTEM_THEME == "Dark" ]]; then
  GREEN=49
  MAGENTA=162
  GREY=243
  RED=197
  BLUE=57
  YELLOW=220
  PRIMARY=253
fi

PROMPT="%{%F{$GREEN}%}@%n %{%F{$GREY}%}—>"
PROMPT+=' %{%F{$MAGENTA}%}%2~%{$reset_color%} $(git_prompt_info)'
PROMPT+="%(?:%{%F{$GREY}%}$ :%{%F{$RED}%}$ )"
PROMPT+="%{%F{$PRIMARY}%}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{%F{$BLUE}%}git:(%{%F{$RED}%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{%F{$BLUE}%}) %{%F{$YELLOW}%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{%F{$BLUE}%})"


