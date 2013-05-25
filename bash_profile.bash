[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Move /user/local/bin before /usr/bin
export PATH=/usr/local/bin:/usr/local/share/python:$PATH

source ~/dotfiles/git-completion.bash

# Prompt
export GIT_PS1_SHOWDIRTYSTATE=''
export GIT_PS1_SHOWUNTRACKEDFILES=''

#Promt Stuff
BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
LIME_YELLOW=$(tput setaf 190)
POWDER_BLUE=$(tput setaf 153)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
BRIGHT=$(tput bold)
NORMAL=$(tput sgr0)
BLINK=$(tput blink)
REVERSE=$(tput smso)
UNDERLINE=$(tput smul)

PS1='\[${MAGENTA}\]\u\[${WHITE}\]@\[${LIME_YELLOW}\]\h\[${WHITE}\] in \[${GREEN}\]\w\[${WHITE}${CYAN}\]`__git_ps1 " \[${WHITE}\]on \[${CYAN}\]%s"`\[${WHITE}\]\r\no\[${NORMAL}\] '
