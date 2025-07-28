#!/bin/bash -e

if ! [ -x "$(command -v git)" ]; then
  sudo apt install git -y
fi

git clone https://github.com/nosia-ai/nosia.git

cd ./nosia/

if ! [ -n "$OLLAMA_BASE_URL" ]; then
  OLLAMA_BASE_URL=http://localhost:11434
fi

if ! [ -n "$LLM_MODEL" ]; then
  LLM_MODEL=mistral-small3.2
fi

OLLAMA_BASE_URL=$OLLAMA_BASE_URL LLM_MODEL=$LLM_MODEL ./script/setup

./script/start
