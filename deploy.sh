#!/bin/bash

export AWS_ACCESS_KEY_ID= process.env.AWS_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY= process.env.AWS_SECRET_ACCESS_KEY
export AWS_BUCKET_NAME= process.env.AWS_BUCKET_NAME
export AWS_CLOUDFRONT= process.env.AWS_CLOUDFRONT

# Load nvm (node version manager), install node (version in .nvmrc), and npm install packages
[ -s "$HOME/.nvm/nvm.sh" ] && source "$HOME/.nvm/nvm.sh" && nvm use
# Npm install if not already.
[ ! -d "node_modules" ] && npm install

npm run generate
gulp deploy
