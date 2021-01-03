export LANG=en_US.UTF-8

## completion ##
autoload -U compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
compinit
## completion ##

## colors ##
autoload colors
colors
## colors ##

## histroy ##
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_save_nodups
setopt extended_history
setopt append_history
setopt inc_append_history
setopt hist_no_store
setopt hist_reduce_blanks
setopt hist_ignore_space
setopt no_beep
## histroy ##

## aliases ##
alias ls="ls -G"
alias ll="ls -lA"
alias la="ls -a"
## aliases ##

## nodebrew ##
export PATH=$HOME/.nodebrew/current/bin:$PATH
## nodebrew ##

## theme ##
setopt prompt_subst
source /Users/andres.oshiro/zsh-repos/themes/agnoster/agnoster.zsh-theme
## theme ##

## plugins ##
source /Users/andres.oshiro/zsh-repos/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
## plugins ##

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}
