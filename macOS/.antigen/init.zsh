#-- START ZCACHE GENERATED FILE
#-- GENERATED: Thu Mar 12 14:02:12 EET 2020
#-- ANTIGEN v2.2.3
_antigen () {
	local -a _1st_arguments
	_1st_arguments=('apply:Load all bundle completions' 'bundle:Install and load the given plugin' 'bundles:Bulk define bundles' 'cleanup:Clean up the clones of repos which are not used by any bundles currently loaded' 'cache-gen:Generate cache' 'init:Load Antigen configuration from file' 'list:List out the currently loaded bundles' 'purge:Remove a cloned bundle from filesystem' 'reset:Clears cache' 'restore:Restore the bundles state as specified in the snapshot' 'revert:Revert the state of all bundles to how they were before the last antigen update' 'selfupdate:Update antigen itself' 'snapshot:Create a snapshot of all the active clones' 'theme:Switch the prompt theme' 'update:Update all bundles' 'use:Load any (supported) zsh pre-packaged framework') 
	_1st_arguments+=('help:Show this message' 'version:Display Antigen version') 
	__bundle () {
		_arguments '--loc[Path to the location <path-to/location>]' '--url[Path to the repository <github-account/repository>]' '--branch[Git branch name]' '--no-local-clone[Do not create a clone]'
	}
	__list () {
		_arguments '--simple[Show only bundle name]' '--short[Show only bundle name and branch]' '--long[Show bundle records]'
	}
	__cleanup () {
		_arguments '--force[Do not ask for confirmation]'
	}
	_arguments '*:: :->command'
	if (( CURRENT == 1 ))
	then
		_describe -t commands "antigen command" _1st_arguments
		return
	fi
	local -a _command_args
	case "$words[1]" in
		(bundle) __bundle ;;
		(use) compadd "$@" "oh-my-zsh" "prezto" ;;
		(cleanup) __cleanup ;;
		(update|purge) compadd $(type -f \-antigen-get-bundles &> /dev/null || antigen &> /dev/null; -antigen-get-bundles --simple 2> /dev/null) ;;
		(theme) compadd $(type -f \-antigen-get-themes &> /dev/null || antigen &> /dev/null; -antigen-get-themes 2> /dev/null) ;;
		(list) __list ;;
	esac
}
antigen () {
  local MATCH MBEGIN MEND
  [[ "$ZSH_EVAL_CONTEXT" =~ "toplevel:*" || "$ZSH_EVAL_CONTEXT" =~ "cmdarg:*" ]] && source "/usr/local/Cellar/antigen/2.2.3/share/antigen/antigen.zsh" && eval antigen $@;
  return 0;
}
typeset -gaU fpath path
fpath+=(/Users/krasn0glaz/.antigen/bundles/geometry-zsh/geometry /Users/krasn0glaz/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/dirhistory /Users/krasn0glaz/.antigen/bundles/zsh-users/zsh-completions /Users/krasn0glaz/.antigen/bundles/zsh-users/zsh-autosuggestions) path+=(/Users/krasn0glaz/.antigen/bundles/geometry-zsh/geometry /Users/krasn0glaz/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/dirhistory /Users/krasn0glaz/.antigen/bundles/zsh-users/zsh-completions /Users/krasn0glaz/.antigen/bundles/zsh-users/zsh-autosuggestions)
_antigen_compinit () {
  autoload -Uz compinit; compinit -i -d "/Users/krasn0glaz/.antigen/.zcompdump"; compdef _antigen antigen
  add-zsh-hook -D precmd _antigen_compinit
}
autoload -Uz add-zsh-hook; add-zsh-hook precmd _antigen_compinit
compdef () {}

if [[ -n "" ]]; then
  ZSH=""; ZSH_CACHE_DIR=""
fi
#--- BUNDLES BEGIN
source '/Users/krasn0glaz/.antigen/bundles/geometry-zsh/geometry/geometry.zsh';
source '/Users/krasn0glaz/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/dirhistory/dirhistory.plugin.zsh';
source '/Users/krasn0glaz/.antigen/bundles/zsh-users/zsh-completions/zsh-completions.plugin.zsh';
source '/Users/krasn0glaz/.antigen/bundles/zsh-users/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh';

#--- BUNDLES END
typeset -gaU _ANTIGEN_BUNDLE_RECORD; _ANTIGEN_BUNDLE_RECORD=('https://github.com/geometry-zsh/geometry.git / theme true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/dirhistory plugin true' 'https://github.com/zsh-users/zsh-completions.git / plugin true' 'https://github.com/zsh-users/zsh-autosuggestions.git / plugin true')
typeset -g _ANTIGEN_CACHE_LOADED; _ANTIGEN_CACHE_LOADED=true
typeset -ga _ZCACHE_BUNDLE_SOURCE; _ZCACHE_BUNDLE_SOURCE=('/Users/krasn0glaz/.antigen/bundles/geometry-zsh/geometry//' '/Users/krasn0glaz/.antigen/bundles/geometry-zsh/geometry///geometry.zsh-theme' '/Users/krasn0glaz/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/dirhistory' '/Users/krasn0glaz/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/dirhistory/dirhistory.plugin.zsh' '/Users/krasn0glaz/.antigen/bundles/zsh-users/zsh-completions//' '/Users/krasn0glaz/.antigen/bundles/zsh-users/zsh-completions///zsh-completions.plugin.zsh' '/Users/krasn0glaz/.antigen/bundles/zsh-users/zsh-autosuggestions//' '/Users/krasn0glaz/.antigen/bundles/zsh-users/zsh-autosuggestions///zsh-autosuggestions.plugin.zsh')
typeset -g _ANTIGEN_CACHE_VERSION; _ANTIGEN_CACHE_VERSION='v2.2.3'

#-- END ZCACHE GENERATED FILE
