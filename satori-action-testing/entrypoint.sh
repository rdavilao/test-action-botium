#!/bin/bash 

rasa --version

node -v

echo "::group::Rasa train"
echo "Running 'rasa train' command"
rasa train
echo "::endgroup::"
rasa run --enable-api &
echo "Rasa run"

if [ -d "/botium-test" ]; then
    cd botium-test
else
    mkdir botium-test
    cd botium-test
    botium-cli init
fi

echo "$INPUT_VERSION"
botium-cli run 

ls
exit 0