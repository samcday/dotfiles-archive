autoload -U add-zsh-hook
load-nvmrc() {
  current_node=$(nvm current)
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    if [[ "$(nvm current)" != "$(nvm version `cat .nvmrc`)" ]]; then
      nvm use
    fi
  fi
}
add-zsh-hook chpwd load-nvmrc
