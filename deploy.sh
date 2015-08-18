#! /bin/bash
if [ -d ./.deploy_git/ ]
then
    mv resume.html .deploy_git/
    git add .
    git commit -m 'update'
    echo "commit"
else
    mkdir -p .deploy_git/
    mv resume.html .deploy_git/
    git add .
    git commit -m 'update'
    echo "create && add"
fi
