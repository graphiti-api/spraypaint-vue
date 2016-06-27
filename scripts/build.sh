#!/bin/sh

# if the tests fail, abort (errexit)
set -e

BIN=$PWD/node_modules/.bin

# Travis stuff
if [ $(env | grep TRAVIS_JOB_ID ) ] ; then

# coarse Node version check
 if [[ `node --version` < '5.4.1' ]]; then
  echo "**************************************************************"
  echo "* Your build have ben stopped because of a unsupported Node  *"
  echo "* version. Currently Node 5 or newer is required.            *"
  echo "*                                                            *"
  echo "* Please fix the issue and then rerun this command.          *"
  echo "**************************************************************"

  exit 1
 fi

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

DEST_DIR=./dist

# delete all files if there is a dist folder
if [ -d ${DEST_DIR} ]; then
  rm -rf ${DEST_DIR}
fi

# validate all source files
( exec "./scripts/lint-src.sh" )

# bundle a production and development bundle with Rollup
$BIN/rollup --environment NODE_ENV:development -c
$BIN/rollup --environment NODE_ENV:production -c
