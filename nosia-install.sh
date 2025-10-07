#!/bin/bash -e

if ! [ -x "$(command -v git)" ]; then
  sudo apt install git -y
fi

git clone https://github.com/nosia-ai/nosia.git

cd ./nosia/

LLM_MODEL=$LLM_MODEL ./script/setup

./script/start
