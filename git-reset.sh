#!/bin/sh

mv .git/config ~/saved_git_config
rm -rf .git
git init
git add . --all
git commit -m 'Initial commit'
mv ~/saved_git_config .git/config
git push --force origin master
