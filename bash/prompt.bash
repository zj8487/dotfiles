function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "("${ref#refs/heads/}")"
}

PS1="$BRIGHT_RED\$(date +%H:%M) $CYAN\w$YELLOW \$(parse_git_branch)$GREEN\$ $WHITE"

