#!/usr/bin/env bash

dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -r "${dir}/login.bashrc" ]; then
  cp "${dir}/login.bashrc" ~/.bash_login
fi

if [ -r "${dir}/init.bashrc" ]; then
  cp "${dir}/init.bashrc" ~/.bashrc
fi

if [ -r "${dir}/aliases.bashrc" ]; then
  cp "${dir}/aliases.bashrc" ~/.bash_aliases
fi

if [ -r "${dir}/logout.bashrc" ]; then
  cp "${dir}/logout.bashrc" ~/.bash_logout
fi
