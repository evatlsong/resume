#! /bin/bash
node_modules/.bin/md2resume resume.md 
if [ -d ./.deploy_git/ ]
then
    mv resume.html .deploy_git/index.html
    cd .deploy_git/
    git add .
    git commit -m 'update'
    git push -f pages master:gh-pages
else
    mkdir -p .deploy_git/
    mv resume.html .deploy_git/index.html
    mv CNAME .deploy_git/
    cd .deploy_git/
    git init
    git remote add pages git@github.com:evatlsong/resume.git
    git add .
    git commit -m 'update'
    git push -f pages master:gh-pages
fi
