#!/bin/bash -e

if ! [ -x "$(command -v git)" ]; then
  sudo apt install git
fi

git clone git@github.com:nosia-ai/nosia.git
cd ./nosia/
OLLAMA_CHAT_COMPLETION_MODEL=$OLLAMA_CHAT_COMPLETION_MODEL OLLAMA_COMPLETION_MODEL=$OLLAMA_COMPLETION_MODEL OLLAMA_URL=$OLLAMA_URL ./script/production/setup
 ./script/production/start
