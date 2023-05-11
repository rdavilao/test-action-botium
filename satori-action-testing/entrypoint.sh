#!/bin/bash 

rasa --version

rasa train

rasa run &

echo "VER"
exit 0