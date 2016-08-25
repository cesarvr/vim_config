
#Colored ManPages
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# -----/ aliases /-----

alias ls='ls'
alias lsd='ls -dlf */'  # List directories
alias ll='ls -l'        # Detailed list
alias l='ls -laF'       # Detailed List
alias cd..='cd ..'      # Parent directory

# color grep
export GREP_COLOR=32
alias grep='grep --color'
alias egrep='egrep --color'



## colors ##
txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White
bldblk='\e[1;30m' # Black - Bold
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White
unkblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White
bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
bakgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White
txtrst='\e[0m'    # Text Reset

#PS1="$txtylw\u->$txtblk$txtwht[\w]$txtcyn:"
export PS1="\[\033[38;5;74m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@[\[$(tput sgr0)\]\[\033[38;5;31m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]]\[$(tput sgr0)\]\[\033[38;5;81m\]:\[$(tput sgr0)\]"
#PS1='%B%F{white}[%B%F{black}%~%B%F{white}]%B%F{white}--%B%F{yellow}» %f'

export GOROOT=~/Documents/go/
export PATH=$PATH:$GOROOT/bin

