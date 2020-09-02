source /usr/share/git/git-prompt.sh

source $(dirname $BASH_SOURCE)/util/color.sh

export PROMPT_COMMAND='__git_ps1 "${GREEN}[\u@\h]${RESET} ${BOLD_CYAN}\w${RESET} ${YELLOW}\$${RESET}" "\\n${BLUE}❯ ${RESET}"'
export GIT_PS1_SHOWCOLORHINTS
export GIT_PS1_SHOWDIRTYSTATE
