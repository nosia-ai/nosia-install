#!/bin/bash -e

if ! [ -x "$(command -v git)" ]; then
  sudo apt install git -y
fi

git clone https://github.com/nosia-ai/nosia.git
cd ./nosia/
OLLAMA_BASE_URL=$OLLAMA_BASE_URL LLM_MODEL=$LLM_MODEL EMBEDDING_MODEL=$EMBEDDING_MODEL CHECK_MODEL=$CHECK_MODEL ./script/production/setup
 ./script/production/start
