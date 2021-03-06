alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias df=dotfiles
alias y=yarn
alias ip="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias c=cargo

mmkdir() {
	mkdir $1 && cd $1
}

yad() {
	yarn add -D "$@"
}

if grep -i microsoft /proc/version; then
	# WSL specific items
	alias open=explorer.exe
fi

# Untracked config goes in .bash_profile
if [ -f ~/.bash_profile ]; then
	    . ~/.bash_profile
fi

