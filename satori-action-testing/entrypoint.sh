#!/bin/bash 

nvm install 15.14.0 
apt-get install npm -y
npm install -g botium-cli

rasa --version

echo "::group::Rasa train"
echo "Running 'rasa train' command"
rasa train
echo "::endgroup::"
rasa run &
echo "Rasa run"
node -v
botium-init
ls
exit 0