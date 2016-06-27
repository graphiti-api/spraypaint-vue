#!/bin/sh

# if the tests fail, abort (errexit)
set -e

BIN=$PWD/node_modules/.bin

# Travis stuff
if [ $(env | grep TRAVIS_JOB_ID ) ] ; then

  # Install version of npm that we are locked against
  npm i -g npm@3
  # Disable the spinner, it looks bad on Travis
  npm config set spin false
  # Install all NPM packages
  npm i
  # Transpile TypeScript source code to ES6
  TSCONFIG=./tsconfig.json

  $BIN/tsc  \
        --outDir ./build \
        -t es6 \
        --skipLibCheck \
        -p ${TSCONFIG}
 fi

# make sure there is a dist folder
if [ ! -d dist ]; then
    mkdir -p ./dist
else
  rm -rf ./dist
  mkdir -p ./dist
fi

# validate all source files
( exec "./scripts/lint-src.sh" )

# bundle a production and development bundle with Rollup
$BIN/rollup --environment NODE_ENV:development -c
$BIN/rollup --environment NODE_ENV:production -c
