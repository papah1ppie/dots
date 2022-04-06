# add to .zshrc to load stuff from here
wtr() {
	curl "wttr.in/$CITY?0nQ"
}

wttr() {
	curl "wttr.in/$1?$2"
}

# wttr.in autodectect ssh session
wttr_autodetect() {
    CLIENT_LOCATION=$(echo $SSH_CLIENT | awk '{print $1}')
    ARGS='0n'
    curl "wttr.in/@$CLIENT_LOCATION?$ARGS"
}

onlogin() {
if [ -n "$SSH_CONNECTION" ]; then 
	echo
	printf "User $USER logged in on $SSH_TTY.\n"
	echo
	echo "You are on $HOST."
	echo
	echo "Welcome home, $USER!"
	echo
	wttr_autodetect
	echo
	echo
	echo "Have a nice day!"; 
    else
    #source  ~/.zkbd/xterm-256color-apple-darwin18.0
fi
print "welcome back, illia"
}

zz() {
    file=$(fzf)
    if [ $? -eq 0 ]; then
	open $file
    fi
}


#comp() {
#    name=$1
#    g++ -Wall -Wextra -std=c++17 -O3 -pedantic-errors -fsanitize=address -fsanitize=undefined -fno-sanitize-recover=all $name -o ${name%.*}
#}
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi
