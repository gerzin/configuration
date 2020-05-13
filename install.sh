#!/usr/bin/env bash

echo "copying .pythonrc"
cp .pythonrc ~
echo "installing .bash_functions"
cat .bash_functions > ~/.bash_functions
echo "appending .aliases"
cat .aliases >> ~/.aliases

