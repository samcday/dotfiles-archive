export PATH="./bin:$HOME/.rbenv/shims:/usr/local/bin:/usr/local/sbin:$HOME/.sfs:$ZSH_DF/bin:$PATH"
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

case $OSTYPE in
darwin*)
	export PATH="$ZSH_DF/bin/osx:$PATH"
	;;
linux*)
	export PATH="$ZSH_DF/bin/linux:$PATH"
	;;
esac
