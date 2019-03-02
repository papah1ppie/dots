# ~/.zshrc

# load extensions
source /etc/zsh/antigen.zsh
source /etc/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# load prompts
autoload -U compinit promptinit
compinit
promptinit


##CUSTOM CONFIG
#########################
CODENAME="dwarq7"
CITY="Kiev"

EDITOR=vim
VISUAL=vim
export EDITOR
export VISUAL

fpath=(/etc/zsh/zsh-completions/src $fpath)
PATH="$PATH\
:/home/ilya/.bin\
:/home/ilya/.mos/bin\
:/home/ilya/.local/bin\
:/home/ilya/.linuxbrew/bin"
GOPATH=$HOME/go

# prompt symbols list
# triangles ∆ ⛛ ▲ ∇ ▲ △ 🠶
# circles ⨴ ⨭ ⟓ ⟐ ⨶
# λ ×
# arrows ❯ ≻ 🠶
# crosses + ×
#########################

##GEOMETRY CONFIG
##############################################
PROMPT_GEOMETRY_COLORIZE_SYMBOL=false
GEOMETRY_SYMBOL_PROMPT="❯" #▲ ❯ +                	# default prompt symbol
GEOMETRY_SYMBOL_RPROMPT="❯❯" # ▶ +  ❯              # multiline prompts
GEOMETRY_SYMBOL_EXIT_VALUE="❯" # ▲ △ ×          # displayed when exit value is != 0
GEOMETRY_SYMBOL_ROOT="❯"                   	# when logged in user is root
GEOMETRY_COLOR_EXIT_VALUE="99"         	# prompt symbol color when exit value is != 0
GEOMETRY_COLOR_PROMPT="white"               # prompt symbol color
GEOMETRY_COLOR_ROOT="magenta"               # root prompt symbol color
GEOMETRY_COLOR_DIR="blue"                   # current directory color
GEOMETRY_PLUGIN_SEPARATOR=" "               # use to separate right prompt parts

PROMPT_GEOMETRY_EXEC_TIME=false
PROMPT_GEOMETRY_GIT_CONFLICTS=true
PROMPT_GEOMETRY_COMMAND_EXEC_TIME=600
GEOMETRY_SYMBOL_SPACER=" " 
GEOMETRY_DIR_SPACER=""
GEOMETRY_SYMBOL_GIT_DIRTY="⬡"                 # when repo has "dirty" state
GEOMETRY_SYMBOL_GIT_CLEAN="⬢"                 # when repo has "clean" state
GEOMETRY_SYMBOL_GIT_BARE="⬢"                  # when repo is bare (no working tree)
GEOMETRY_SYMBOL_GIT_REBASE="\uE0A0"           # when in middle of rebase
GEOMETRY_SYMBOL_GIT_UNPULLED="⇣"              # when there are unpulled changes
GEOMETRY_SYMBOL_GIT_UNPUSHED="⇡"              # when there are unpushed changes
GEOMETRY_SYMBOL_GIT_CONFLICTS_SOLVED="◆"      # when all conflicts have been solved
GEOMETRY_SYMBOL_GIT_CONFLICTS_UNSOLVED="◈"    # when there are still unsolved conflicts
GEOMETRY_COLOR_GIT_DIRTY=red                # when repo has "dirty" state
GEOMETRY_COLOR_GIT_CLEAN=84              # when repo has "clean" state
GEOMETRY_COLOR_GIT_BARE=blue               # when repo is bare (no working tree)
GEOMETRY_COLOR_GIT_CONFLICTS_UNSOLVED=red   # when there are unsolved conflicts
GEOMETRY_COLOR_GIT_CONFLICTS_SOLVED=green   # when all conflicts have been solved
GEOMETRY_COLOR_GIT_BRANCH=242               # branch name color
PROMPT_GEOMETRY_GIT_TIME=true
GEOMETRY_GIT_NO_COMMITS_MESSAGE="no commits" # message where repository has no commits
GEOMETRY_GIT_SEPARATOR="::"                 # customize git character separator
##############################################
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=242'
##############################################
ZSH_TMUX_AUTOSTART=false
ZSH_TMUX_AUTOSTART_ONCE=false
ZSH_TMUX_AUTOCONNECT=false
ZSH_TMUX_AUTOQUIT=false
ZSH_TMUX_FIXTERM=false
#############################################



##ANTIGEN CONFIG
#############################################
# Load Theme
antigen theme geometry-zsh/geometry
add-zsh-hook periodic prompt_geometry_set_title
# optional
# Load the oh-my-zsh's library.
#antigen use oh-my-zsh
antigen bundle git # git plugin
antigen bundle mercurial # hg
#antigen bundle docker # docker
#antigen bundle brew # homebrew/linuxbrew
antigen bundle common-aliases # на всякий
antigen bundle dirhistory # alt+left/right
antigen bundle extract # archives
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle sublime # subl3
#antigen bundle tmux # tmux
#antigen bundle web-search #google
antigen apply
#############################################

# load custom plugin
#source $HOME/.antigen/bundles/geometry-zsh/geometry/plugins/date/plugin.zsh

DISABLE_AUTO_TITLE="true"

#add-zsh-hook periodic prompt_geometry_set_title # for custom titling



##KEYBIND
#############################################
# i was fed up to configure it
autoload -Uz zkbd
 [[ ! -f ~/.zkbd/$TERM-${${DISPLAY:t}:-$VENDOR-$OSTYPE} ]] && zkbd
 source  ~/.zkbd/$TERM-${${DISPLAY:t}:-$VENDOR-$OSTYPE}

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

# на всякий прописал руками
bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}" end-of-line
bindkey "e[1~" beginning-of-line
bindkey "e[4~" end-of-line
bindkey "e[5~" beginning-of-history
bindkey "e[6~" end-of-history
bindkey "e[3~" delete-char
bindkey "e[2~" quoted-insert
bindkey "e[5C" forward-word
bindkey "eOc" emacs-forward-word
bindkey "e[5D" backward-word
bindkey "eOd" emacs-backward-word
bindkey "ee[C" forward-word
bindkey "ee[D" backward-word
bindkey "^H" backward-delete-word

# for rxvt
bindkey "e[8~" end-of-line
bindkey "e[7~" beginning-of-line

# for non RH/Debian xterm, can't hurt for RH/DEbian xterm
bindkey "eOH" beginning-of-line
bindkey "eOF" end-of-line

# for freebsd console
bindkey "e[H" beginning-of-line
bindkey "e[F" end-of-line

# completion in the middle of a line
bindkey '^i' expand-or-complete-prefix
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
###############################################


## useful stuff
# history
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000000
SAVEHIST=10000000
# useful
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

# aliases
alias cls="clear"
alias ll="ls -lh  --color=always"
alias la="ls -lah --color=always"
alias ls="ls --color=always"
alias s="sudo"
alias free='free -h'
alias code="visual-studio-code-bin"
## rofi
alias rofi="rofi -theme .rofi/flat-red -modi drun,window,run,ssh,windowcd,combi,keys -width 50 -terminal konsole -show window"

# functions
source $HOME/.bin/functions



##SYNTAX HIGHLIGHTING
#########################################################
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_PATTERNS=('rm -rf' 'bg=red,bold')
ZSH_HIGHLIGHT_STYLES=(
		'alias'                  'fg=green' #153
        'reserved-word'          'fg=green'
		#'single-hyphen-option'	 'fg=cyan'
		#'double-hyphen-option'	 'fg=cyan'
		'comment'		 		 'fg=242'
		'globbing'		         'fg=underlined,bold'
		'redirection'		     'fg=226' #226
		'arg0'			         'fg=white' #white ??99
		'builtin'                'fg=green' #153
        'function'               'fg=green' #226
        'command'                'fg=green' #153 226 119
		'commandseparator'	     'fg=226' #32 226
        'precommand'             'fg=69' #153 32 226  99 97 55 105 sudo?
        'path'                   'fg=underline'
        'double-quoted-argument' 'fg=yellow'
        'single-quoted-argument' 'fg=yellow'
        'unknown-token'          'fg=red,bold'
)
#########################################################



# on login
onlogin