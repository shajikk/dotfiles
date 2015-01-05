set filec
set autolist
set history=5000
set savehist=5000
alias rm '\rm -i'
alias cp '\cp -i'
alias cls 'clear'
alias vi 'vim'
set prompt="$cwd %"
alias cd 'cd \!*; set prompt="$cwd %"'
alias ls 'ls -bFC --color'
set path = ( /bin /usr/bin /usr/sbin )

echo "Cygwin tcsh login shell\n"
