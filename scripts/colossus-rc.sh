#!/usr/bin/env bash
# COLOSSUS bash RC for sessions inside the COLOSSUS terminal

# 1) Source user's normal bashrc first (aliases, prompt, etc.)
if [ -f "$HOME/.bashrc" ]; then
  # shellcheck source=/dev/null
  source "$HOME/.bashrc"
fi

# 2) Show the COLOSSUS banner if configured
if [ -n "$COLOSSUS_BANNER_CMD" ]; then
  "$COLOSSUS_BANNER_CMD"
fi

# 3) Define `login <username>` to use COLOSSUS PQ-SSH wrapper
if [ -n "$COLOSSUS_PQSSH_CMD" ]; then
  login() {
    if [ -z "$1" ]; then
      echo "Usage: login <username>"
      return 1
    fi
    "$COLOSSUS_PQSSH_CMD" "$1"
  }
fi

