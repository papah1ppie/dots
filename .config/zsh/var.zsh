# basics
CODENAME="krasn0glaz"
CITY="Vienna"
QTH=JN88ee
QTH0=KO50gl
EDITOR="vim"
VISUAL="vim"
export EDITOR
export VISUAL
PATH="$PATH:$HOME/.local/bin:$HOME/.bin"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/opt/zip/bin:/usr/local/bin:$PATH"
FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
HOMEBREW_NO_AUTO_UPDATE=1;
RANGER_LOAD_DEFAULT_RC=false;

# useful stuff
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

# syntax
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern regexp)
ZSH_HIGHLIGHT_PATTERNS=('rm -rf' 'bg=red,bold'
			'doas'	 'fg=magenta'
)
ZSH_HIGHLIGHT_STYLES=(
		#'cursor'								 'fg=white'
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
		'precommand'             'fg=magenta,bold' #153 32 226  99 97 55 105 sudo?
		'path'                   'fg=69,underline'
		'double-quoted-argument' 'fg=yellow'
		'single-quoted-argument' 'fg=yellow'
		'unknown-token'          'fg=red,bold'
)
########################################################
