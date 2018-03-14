#!/usr/bin/env bash

NODE_VERSION="${1:-node}"

NVM_VERSION="0.33.8"
NVM_DIR="$HOME/.bin/nvm"
PROFILE=

export NVM_DIR
export PROFILE

curl -o- "https://raw.githubusercontent.com/creationix/nvm/v$NVM_VERSION/install.sh" | bash

nvm install "$NODE_VERSION"
