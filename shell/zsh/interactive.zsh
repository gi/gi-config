# Z Shell: .zshrc

if [ -d "${XDG_BIN_HOME}" ]; then
  export PATH="${XDG_BIN_HOME}:${PATH}"
fi
