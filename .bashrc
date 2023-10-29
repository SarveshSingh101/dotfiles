#
# ~/.bashrc
#

# If not running interactively, don't do anything

[[ $- != *i* ]] && return
shopt -s autocd
#Exports
export EDITOR=nvim
export VISUAL=nvim
export PAGER=less
export TERMINAL=kitty
export BROWSER=firefox
export PATH=$HOME/scripts:$PATH

#Alias
alias ls='exa -al --header --icons  --group-directories-first --color=auto'
alias grep='rg --color=auto'
alias vim=nvim
alias ZZ='exit'
alias cd='z'
alias zz='z -'
alias v=nvim
alias e=nvim
alias c..='cd ..'
alias ..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias sps='sudo pacman -S'
alias spr='sudo pacman -R'
alias update='sudo pacman -Syyu && yay'
alias clean="pacman -Qq | fzf --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -Rns"
alias search="pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S"
alias clone='git clone'
alias log='git log -10 --oneline'
alias ga='git add'
alias gc='git clean -f'
alias commit='git commit -m'
alias ff="fd . --hidden | fzf | tr -d '\n' | xclip -selection c"
alias b='vim ~/.bashrc'
alias s='source ~/.bashrc'
alias y='ytfzf -t '

# Colour codes
RED="\\[\\e[1;31m\\]"
GREEN="\\[\\e[1;32m\\]"
YELLOW="\\[\\e[1;33m\\]"
BLUE="\\[\\e[1;34m\\]"
MAGENTA="\\[\\e[1;35m\\]"
CYAN="\\[\\e[1;36m\\]"
WHITE="\\[\\e[1;37m\\]"
ENDC="\\[\\e[0m\\]"

# Set a two-line prompt. If accessing via ssh include 'ssh-session' message.
if [[ -n "$SSH_CLIENT" ]]; then ssh_message="-ssh_session"; fi
PS1="${YELLOW} ${RED}\u${ssh_message}${CYAN}  ${BLUE}\w ${CYAN}${ENDC} " 
neofetch | lolcat
eval "$(zoxide init bash)"
