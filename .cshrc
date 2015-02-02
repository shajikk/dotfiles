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
set path = ( /bin /usr/bin /usr/sbin C:/Program\ Files\ \(x86\)/TkDiff )

echo "Cygwin tcsh login shell\n"

#alias sa  'eval ~/.sagent'
alias sa  'set command = `~/.sagent`; eval $command; echo "EXECUTED : $command"; ssh-add ~/.ssh/id_rsa'
alias sk  'ssh-agent -k'
alias mh '~/.bin/mhelp.bat'
