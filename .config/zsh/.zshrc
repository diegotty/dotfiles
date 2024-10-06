# Created by newuser for 5.9
export VISUAL=nvim
export EDITOR=nvim
export SUDO_EDITOR=nvim
export HISTFILE=$ZDOTDIR/.zhistory
export HISTSIZE=10000
export SAVEHIST=10000
export XDG_CONFIG_HOME=$HOME/.config
export WORKON_HOME=$HOME/.virtualenvs
#vim mode setup
bindkey -v
export KEYTIMEOUT=1
source $ZDOTDIR/cursor_mode
source /usr/bin/virtualenvwrapper_lazy.sh

#TODO !
#zstyle ':completion:*' menu select
#zmodload zsh/complist
#bindkey -M menuselect 'h' vi-backward-char
#bindkey -M menuselect 'k' vi-up-line-or-history
#bindkey -M menuselect 'l' vi-forward-char
#bindkey -M menuselect 'j' vi-down-line-or-history


source $ZDOTDIR/aliases
setopt HIST_SAVE_NO_DUPS

#autocompletions
autoload -U compinit; compinit
_comp_options+=(globdots) #include hidden files
source $ZDOTDIR/completion.zsh

eval "$(zoxide init zsh)"

# directory stack
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT

#prompt (TODO)
PROMPT=$'%F{white}%~ %B%F{blue}>%f%b '
