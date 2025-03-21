# Some good standards, which are not used if the user
# creates his/her own .bashrc/.bash_profile

# --show-control-chars: help showing Korean or accented characters
alias ls='ls -F --color=auto --show-control-chars'
alias ll='ls -lah'

#map notepad++ to npp
alias npp='C:\\Program\ Files\\Notepad++\\notepad++.exe'
alias aliases='source "C:\\Program Files\\Git\\etc\\profile.d\\aliases.sh"'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias gs='git status'
alias ga='git add -v .'
alias gc='git commit -v'
alias pwt='git push && git push --tags'
alias sn='git fetch && git lg'

alias dotfiles='cd C:\\dotfiles'

#raspberry pi
alias ssh-rpi='ssh pi@192.168.1.94'

case "$TERM" in
xterm*)
	# The following programs are known to require a Win32 Console
	# for interactive usage, therefore let's launch them through winpty
	# when run inside `mintty`.
	for name in node ipython php php5 psql python2.7
	do
		case "$(type -p "$name".exe 2>/dev/null)" in
		''|/usr/bin/*) continue;;
		esac
		alias $name="winpty $name.exe"
	done
	;;
esac
