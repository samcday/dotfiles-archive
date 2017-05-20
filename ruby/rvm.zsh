__rvm_loaded=0

load_rvm() {
  if [[ -f .rvmrc || -f .ruby-version ]]; then
    if [[ "$__rvm_loaded" -eq 0 ]]; then
      __rvm_loaded=1
      [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
      rvm use
    fi
  fi
}

autoload -U add-zsh-hook
add-zsh-hook chpwd load_rvm
load_rvm
