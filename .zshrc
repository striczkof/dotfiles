# striczkof's Personal dotfiles

# These can only be ran once
if [ -z "$_RC_INIT_ONCE" ]; then
  # Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
  # Initialization code that may require console input (password prompts, [y/n]
  # confirmations, etc.) must go above this block; everything else may go below.
  if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
  fi
  
  source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

  # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
  [[ ! -f ${ZDOTDIR:-$HOME}/.p10k.zsh ]] || source ${ZDOTDIR:-$HOME}/.p10k.zsh
  
  # Completions
  if type brew &>/dev/null; then
    FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
    
    autoload -Uz compinit
    compinit
  fi
  
  # zsh-autocomplete
  source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
  
  # zsh-autosuggestions
  source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  
  # Get profiles
  source ${ZDOTDIR:-$HOME}/.profile
fi


# Aliases
source ${ZDOTDIR:-$HOME}/.aliases

# History
## Set the history file
export HISTFILE=${ZDOTDIR:-$HOME}/.history
## Append history to file then save it
setopt appendhistory
#setopt shareHistory
## Disable extended history
unsetopt extendedhistory

