#!/usr/bin/env sh

echo "Node ⬢"

nvm install stable
nvm alias default stable

echo "Installing latest npm"

npm install -g npm@latest

echo "Installing global dependencies"

yarn global add pure-prompt fkill-cli

echo "Node finished ⬢"
