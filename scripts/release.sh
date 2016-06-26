#!/bin/sh

# if anything fails, abort (errexit)
set -e

# Build library
./scripts/build.sh

# Publish to NPM
echo '> publishing to npm...'

npm publish

# get correct version
VERSION=$(cat package.json | grep "version" | sed 's/"version": "\(.*\)",/\1/' | sed 's/[[:space:]]//g')

 # Add and push to Gitbub
 git add -A
 git commit -m '${VERSION} release'
 git push

echo '> release complete'