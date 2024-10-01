#!/usr/bin/env zsh

# catをbatに置き換える
if [ "$(command -v bat)" ]; then
  unalias -m 'cat'
  alias cat='bat -pp --theme="Monokai Extended Origin"'
fi
