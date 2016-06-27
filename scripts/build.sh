#!/bin/sh

# if the tests fail, abort (errexit)
set -e

BIN=$PWD/node_modules/.bin

# Only allow Node.js v.5.4.1 or newer

 if [[ `node --version` < 5.4.1 ]]; then
  echo "********************************************************************"
  echo "* Your build have ben stopped because your environment doesn't run *"
  echo "* on Node.js v.5.4.1 or newer.                                    *"
  echo "*                                                                  *"
  echo "* Please fix the issue and then rerun this command.                *"
  echo "********************************************************************"

  exit 1

 fi

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
