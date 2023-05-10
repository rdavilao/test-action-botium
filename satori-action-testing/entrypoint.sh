#!/bin/bash 

npm install -g botium-cli

botium-cli init

botiumOutput=$(botium-cli run 2>&1)

echo "$botiumOutput" >> "${GITHUB_STEP_SUMMARY}"