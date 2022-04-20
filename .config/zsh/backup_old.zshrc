# ~/.zshrc

# load extensions
source /usr/local/Cellar/antigen/2.2.3/share/antigen/antigen.zsh
source /Users/krasn0glaz/.local/bin/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# load prompts
#autoload -U compinit promptinit
#compinit
#promptinit

# CUSTOM CONFIG
CODENAME="krasn0glaz"
CITY="Kyiv"
EDITOR="vim"
VISUAL="vim"
export EDITOR
export VISUAL
PATH="$PATH:$HOME/.local/bin:$HOME/.bin:/Users/krasn0glaz/Library/Python/2.7/bin"
HOMEBREW_NO_AUTO_UPDATE=1;
# aliases
alias cls="clear"
alias ll="exa -l" #"gls --color=yes -lh"
alias la="exa -la" #"gls --color=yes -lah"
alias ls="exa" #"gls --color=yes"
alias s="sudo"
alias doas="sudo"
alias upd="sudo port selfupdate; sudo port upgrade installed; brew update; brew upgrade;"
alias vim=vim
alias edit=vim
alias subl=sublime
alias telnet=gtelnet
alias mc="SHELL=/opt/local/bin/bash;mc;SHELL=/usr/local/bin/zsh"
##GEOMETRY CONFIG
PROMPT_GEOMETRY_COLORIZE_SYMBOL=false
GEOMETRY_SYMBOL_PROMPT="⨭" #▲ ❯ +      
GEOMETRY_SYMBOL_RPROMPT="⨭" # ▶ +  ❯   
GEOMETRY_SYMBOL_EXIT_VALUE="⨴" # ▲ △ × 
GEOMETRY_SYMBOL_ROOT="⨶"
GEOMETRY_PROMPT_PREFIX=""
GEOMETRY_PROMPT_PREFIX_SPACER=""               
GEOMETRY_COLOR_EXIT_VALUE="99"         	
GEOMETRY_COLOR_PROMPT="118"           
GEOMETRY_COLOR_ROOT="magenta"           
GEOMETRY_COLOR_DIR="69"               
GEOMETRY_PLUGIN_SEPARATOR=" "           
PROMPT_GEOMETRY_EXEC_TIME=false
PROMPT_GEOMETRY_GIT_CONFLICTS=true
PROMPT_GEOMETRY_COMMAND_EXEC_TIME=600
GEOMETRY_SYMBOL_SPACER=" " 
GEOMETRY_DIR_SPACER=""
GEOMETRY_SYMBOL_GIT_DIRTY="⬡"              
GEOMETRY_SYMBOL_GIT_CLEAN="⬢"              
GEOMETRY_SYMBOL_GIT_BARE="⬢"               
GEOMETRY_SYMBOL_GIT_REBASE="\uE0A0"        
GEOMETRY_SYMBOL_GIT_UNPULLED="⇣"           
GEOMETRY_SYMBOL_GIT_UNPUSHED="⇡"           
GEOMETRY_SYMBOL_GIT_CONFLICTS_SOLVED="◆"   
GEOMETRY_SYMBOL_GIT_CONFLICTS_UNSOLVED="◈" 
GEOMETRY_COLOR_GIT_DIRTY=red               
GEOMETRY_COLOR_GIT_CLEAN=84              
GEOMETRY_COLOR_GIT_BARE=blue               
GEOMETRY_COLOR_GIT_CONFLICTS_UNSOLVED=red  
GEOMETRY_COLOR_GIT_CONFLICTS_SOLVED=green  
GEOMETRY_COLOR_GIT_BRANCH=242              
PROMPT_GEOMETRY_GIT_TIME=true
GEOMETRY_GIT_NO_COMMITS_MESSAGE="no commits"
GEOMETRY_GIT_SEPARATOR="::"                
GEOMETRY_JOBS_SYMBOL="⎋"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=242'

# ANTIGEN CONFIG
# Load Theme
antigen theme geometry-zsh/geometry
add-zsh-hook periodic prompt_geometry_set_title
# optional
# Load the oh-my-zsh's library.
#antigen use oh-my-zsh
#antigen bundle git # git aliases
antigen bundle dirhistory # alt+left/right
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen apply

##FUNCTIONS
wtr() {
	curl "wttr.in/$CITY?0nQ"
}

wttr() {
	curl "wttr.in/$1?$2"
}

wttr_autodetect() {

# wttr.in autodectect ssh

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
	fi
}


##KEYBIND
#autoload -Uz zkbd
# [[ ! -f ~/.zkbd/$TERM-${${DISPLAY:t}:-$VENDOR-$OSTYPE} ]] && zkbd
 source  ~/.zkbd/xterm-256color-apple-darwin18.0
[[ -n "${key[Home]}"     ]]  && bindkey  "${key[Home]}"     beginning-of-line
[[ -n "${key[End]}"      ]]  && bindkey  "${key[End]}"      end-of-line
[[ -n "${key[Insert]}"   ]]  && bindkey  "${key[Insert]}"   overwrite-mode
[[ -n "${key[Delete]}"   ]]  && bindkey  "${key[Delete]}"   delete-char
[[ -n "${key[Up]}"       ]]  && bindkey  "${key[Up]}"       up-line-or-history
[[ -n "${key[Down]}"     ]]  && bindkey  "${key[Down]}"     down-line-or-history
[[ -n "${key[Left]}"     ]]  && bindkey  "${key[Left]}"     backward-char
[[ -n "${key[Right]}"    ]]  && bindkey  "${key[Right]}"    forward-char
[[ -n "${key[PageUp]}"   ]]  && bindkey  "${key[PageUp]}"   beginning-of-buffer-or-history
[[ -n "${key[PageDown]}" ]]  && bindkey  "${key[PageDown]}" end-of-buffer-or-history

## useful stuff
# history
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000000
SAVEHIST=10000000
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
setopt HIST_BEEP                 # Beep when accessing nonexistent history.
setopt INTERACTIVE_COMMENTS		 # Do not treat # as an error
setopt MAGIC_EQUAL_SUBST

##SYNTAX HIGHLIGHTING
#########################################################
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern regexp)
ZSH_HIGHLIGHT_PATTERNS=('rm -rf' 'bg=red,bold'
			'doas'	 'fg=magenta'
)
ZSH_HIGHLIGHT_STYLES=(
		'alias'                  'fg=green' #153
		'reserved-word'          'fg=green'
		#'single-hyphen-option'	 'fg=cyan'
		#'double-hyphen-option'	 'fg=cyan'
		'comment'		 'fg=242'
		'globbing'		 'fg=underlined,bold'
		'redirection'		 'fg=226' #226
		'arg0'			 'fg=white' #white ??99
		'builtin'                'fg=green' #153
        	'function'               'fg=green' #226
		'command'                'fg=green' #153 226 119
		'commandseparator'	 'fg=226' #32 226
        	'precommand'             'fg=magenta' #153 32 226  99 97 55 105 sudo?
        	'path'                   'fg=underline'
        	'double-quoted-argument' 'fg=yellow'
        	'single-quoted-argument' 'fg=yellow'
        	'unknown-token'          'fg=red,bold'
)
#########################################################

# on login
onlogin
# iTerm2 integration
export ITERM2_SQUELCH_MARK=1
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
