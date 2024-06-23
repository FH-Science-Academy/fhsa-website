#!/bin/zsh

cd /home/archons/fhsa-website

while; do
    git checkout dev
    git fetch

    result=$(git status -uno)

    if [[ $result == *"Your branch is behind"* ]]; then
        git stash
        git pull
        echo "Pulled successfully on $(date)" >> /home/archons/The-SQL-to-Water-H2O2.github.io/autopuller.log
    fi
    sleep 20
done