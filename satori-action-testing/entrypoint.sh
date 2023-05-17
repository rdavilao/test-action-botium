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

botiumOutput=$(botium-cli run 2>&1)

echo "$botiumOutput" >> "${GITHUB_STEP_SUMMARY}"
ls
exit 0