#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"
hugo
cd docs
git add .
msg="[auto] rebuilding site"
git commit -m "$msg"
git push origin master
