#!/bin/bash -e

if ! [ -x "$(command -v git)" ]; then
  sudo apt install git -y
fi

git clone https://github.com/nosia-ai/nosia.git

cd ./nosia/

if ! [ -n "$AI_API_BASE" ]; then
  AI_API_BASE=http://localhost:11434/v1
fi

if ! [ -n "$LLM_MODEL" ]; then
  LLM_MODEL=granite4:micro-h
fi

AI_API_BASE=$AI_API_BASE LLM_MODEL=$LLM_MODEL ./script/setup

./script/start
