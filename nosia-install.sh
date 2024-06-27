#!/bin/bash -e

if ! [ -x "$(command -v git)" ]; then
  sudo apt install git
fi

git clone git@github.com:nosia-ai/nosia.git
cd ./ia/
OLLAMA_URL=$OLLAMA_URL RAILS_MASTER_KEY=$RAILS_MASTER_KEY ./script/production/setup
 ./script/production/start
