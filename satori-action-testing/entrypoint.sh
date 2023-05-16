#!/bin/bash 

rasa --version

pip --version

python --version

echo "::group::Rasa train"
echo "Running 'rasa train' command"
rasa train
echo "::endgroup::"
rasa run &
echo "Rasa run"

mkdir botium-test
cd botium-test
botium-cli init
botiumOutput=$(botium-cli run 2>&1)

echo "$botiumOutput" >> "${GITHUB_STEP_SUMMARY}"
ls
exit 0