#!/bin/zsh

cd /home/archons/fhsa-website

while; do
    git checkout dev
    git fetch

    result=$(git status -uno)

    if [[ $result == *"Your branch is behind"* ]]; then
        git stash
        git pull
        echo "Pulled successfully on $(date)" >> /home/archons/fhsa-website/autopuller.log
    fi
    sleep 20
done