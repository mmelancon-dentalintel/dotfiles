# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes.
#
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"export

alias zshconf="chezmoi edit ~/.zshrc && chezmoi apply"

alias starshipconf="chezmoi edit $STARSHIP_CONFIG && chezmoi apply"

alias gitconf="chezmoi edit ~/.gitconfig && chezmoi apply"

alias myip='curl -s ifconfig.me'

alias claude-key='export ANTHROPIC_API_KEY=$(op read op://Employee/anthropic-api-key/credential)'
