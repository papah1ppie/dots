#-- START ZCACHE GENERATED FILE
#-- GENERATED: Wed Feb  6 22:21:24 EET 2019
#-- ANTIGEN v2.2.2
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
  [[ "$ZSH_EVAL_CONTEXT" =~ "toplevel:*" || "$ZSH_EVAL_CONTEXT" =~ "cmdarg:*" ]] && source "/etc/zsh/antigen.zsh" && eval antigen $@;
  return 0;
}
typeset -gaU fpath path
fpath+=(/home/ilya/.antigen/bundles/geometry-zsh/geometry /home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git /home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/mercurial /home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker /home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/brew /home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/common-aliases /home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/dirhistory /home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/extract /home/ilya/.antigen/bundles/zsh-users/zsh-completions /home/ilya/.antigen/bundles/zsh-users/zsh-autosuggestions /home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/web-search) path+=(/home/ilya/.antigen/bundles/geometry-zsh/geometry /home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git /home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/mercurial /home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker /home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/brew /home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/common-aliases /home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/dirhistory /home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/extract /home/ilya/.antigen/bundles/zsh-users/zsh-completions /home/ilya/.antigen/bundles/zsh-users/zsh-autosuggestions /home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/web-search)
_antigen_compinit () {
  autoload -Uz compinit; compinit -d "/home/ilya/.antigen/.zcompdump"; compdef _antigen antigen
  add-zsh-hook -D precmd _antigen_compinit
}
autoload -Uz add-zsh-hook; add-zsh-hook precmd _antigen_compinit
compdef () {}

if [[ -n "" ]]; then
  ZSH=""; ZSH_CACHE_DIR=""
fi
#--- BUNDLES BEGIN
source '/home/ilya/.antigen/bundles/geometry-zsh/geometry/geometry.zsh';
source '/home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh';
source '/home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/mercurial/mercurial.plugin.zsh';
source '/home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/brew/brew.plugin.zsh';
source '/home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/common-aliases/common-aliases.plugin.zsh';
source '/home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/dirhistory/dirhistory.plugin.zsh';
source '/home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/extract/extract.plugin.zsh';
source '/home/ilya/.antigen/bundles/zsh-users/zsh-completions/zsh-completions.plugin.zsh';
source '/home/ilya/.antigen/bundles/zsh-users/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh';
source '/home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/web-search/web-search.plugin.zsh';

#--- BUNDLES END
typeset -gaU _ANTIGEN_BUNDLE_RECORD; _ANTIGEN_BUNDLE_RECORD=('https://github.com/geometry-zsh/geometry.git / theme true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/git plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/mercurial plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/docker plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/brew plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/common-aliases plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/dirhistory plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/extract plugin true' 'https://github.com/zsh-users/zsh-completions.git / plugin true' 'https://github.com/zsh-users/zsh-autosuggestions.git / plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/web-search plugin true')
typeset -g _ANTIGEN_CACHE_LOADED; _ANTIGEN_CACHE_LOADED=true
typeset -ga _ZCACHE_BUNDLE_SOURCE; _ZCACHE_BUNDLE_SOURCE=('/home/ilya/.antigen/bundles/geometry-zsh/geometry//' '/home/ilya/.antigen/bundles/geometry-zsh/geometry///geometry.zsh-theme' '/home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git' '/home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh' '/home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/mercurial' '/home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/mercurial/mercurial.plugin.zsh' '/home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker' '/home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/brew' '/home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/brew/brew.plugin.zsh' '/home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/common-aliases' '/home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/common-aliases/common-aliases.plugin.zsh' '/home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/dirhistory' '/home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/dirhistory/dirhistory.plugin.zsh' '/home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/extract' '/home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/extract/extract.plugin.zsh' '/home/ilya/.antigen/bundles/zsh-users/zsh-completions//' '/home/ilya/.antigen/bundles/zsh-users/zsh-completions///zsh-completions.plugin.zsh' '/home/ilya/.antigen/bundles/zsh-users/zsh-autosuggestions//' '/home/ilya/.antigen/bundles/zsh-users/zsh-autosuggestions///zsh-autosuggestions.plugin.zsh' '/home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/web-search' '/home/ilya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/web-search/web-search.plugin.zsh')
typeset -g _ANTIGEN_CACHE_VERSION; _ANTIGEN_CACHE_VERSION='v2.2.2'

#-- END ZCACHE GENERATED FILE
