# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Add ~/bin to path
if [ -d $HOME/bin ]; then
    PATH=$PATH:$HOME/bin
fi

# Aliases
alias ls='ls --color=auto'
alias ll='ls -la'
alias l.='ls -d .* --color=auto'

alias pacman='sudo pacman'
alias hhkb='xmodmap ~/.config/.Xmodmap'

# Bash Prompt
PS1='\e[01;36m\u\e[m \$ ' 
neofetch
