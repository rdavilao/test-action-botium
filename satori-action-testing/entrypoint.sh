#!/bin/bash 

rasa --version

echo "::group::Rasa train"
echo "Running 'rasa train' command"
rasa train
echo "::endgroup::"
rasa run &
echo "Rasa run"

mkdir botium-test
cd botium-test
botium-cli init
ls
exit 0