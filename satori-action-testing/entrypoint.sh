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
    echo "Existe"
else
    echo "No existe"
    mkdir botium-test
    cd botium-test
fi

botium-cli init
botiumOutput=$(botium-cli run 2>&1)

echo "$botiumOutput" >> "${GITHUB_STEP_SUMMARY}"
ls
exit 0