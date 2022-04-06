# ~/.zshrc

# load extensions and functions
source /opt/homebrew/share/antigen/antigen.zsh
#source $HOME/.local/bin/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/var.zsh
source ~/.config/zsh/geometry-config.zsh
#source ~/.config/zsh/zkbd.zsh
source ~/.config/zsh/source.zsh
source ~/.config/zsh/alias.zsh
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# antigen
antigen theme geometry-zsh/geometry
#antigen bundle dirhistory # alt+left/right
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen apply

add-zsh-hook periodic prompt_geometry_set_title

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# on login
onlogin
