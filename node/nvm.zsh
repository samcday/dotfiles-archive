autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    current_node=$(nvm current)
    if [[ "$(nvm current)" != "$(nvm version `cat .nvmrc`)" ]]; then
      nvm use
    fi
  fi
}
add-zsh-hook chpwd load-nvmrc
