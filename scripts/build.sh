#!/bin/sh

# if the tests fail, abort (errexit)
set -e

BIN=$PWD/node_modules/.bin

# Travis stuff
if [ $(env | grep TRAVIS_JOB_ID ) ] ; then

# Transpile TypeScript source code to ES6
TSCONFIG=./tsconfig.json

 $BIN/tsc  \
        --outDir ./build \
        -t es6 \
        --skipLibCheck \
        -p ${TSCONFIG}

  # Install version of npm that we are locked against
  npm install -g npm@3
  # Disable the spinner, it looks bad on Travis
  npm config set spin false
  # Install all NPM packages
  npm install
fi

# make sure there is a dist folder
if [ ! -d dist ]; then
    mkdir -p ./dist
else
  rm -rf ./dist
  mkdir -p ./dist
fi

# validate all source files
$BIN/tslint -c ./tslint.json src/**/*.ts src/**/*.tsx

# transpile TypeScript down to ES5 and builds a bundle both for development and production with Rollup
$BIN/rollup --environment NODE_ENV:development -c "./config/rollup.dev.config.js";
$BIN/rollup --environment NODE_ENV:production -c "./config/rollup.prod.config.js";



