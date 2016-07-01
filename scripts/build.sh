#!/bin/sh

# if the tests fail, abort (errexit)
set -e

# Install version of npm that we are locked against
npm i -g npm@3

# Disable the spinner, it looks bad on Travis
npm config set spin false

# Install all NPM packages
npm i

# Bundle
npm run build