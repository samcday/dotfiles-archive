# Ensure gpg-agent is running.
gpgconf --launch gpg-agent

# Point SSH at gpg agent.
export SSH_AUTH_SOCK=$HOME/.gnupg/S.gpg-agent.ssh
