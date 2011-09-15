# Check for an interactive session
[ -z "$PS1" ] && return

# Pretty colours
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Show tab-completion options on first <tab> instead of waiting
# for multiple completions.
set show-all-if-ambiguous on

# Case insensitive tab-completion
set completion-ignore-case on