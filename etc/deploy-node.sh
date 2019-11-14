#!/usr/bin/env bash

forever stopall

# run at least once
# git config credential.helper store
git pull

npm install --production
npm prune --production

npm run start
