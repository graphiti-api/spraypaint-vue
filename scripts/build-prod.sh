#!/bin/sh

# if the tests fail, abort (errexit)
set -e

BIN=$PWD/node_modules/.bin

# create dist/ folder if does not exist
if [ ! -d dist ]; then
    mkdir -p ./dist
fi

# transpile the TypeScript source code to ES6
 TSCONFIG=./tsconfig.json

 $BIN/tsc  \
        --outDir ./build \
        -t es6 \
        --skipLibCheck \
        -p ${TSCONFIG}

# validate all source files
( exec "./scripts/lint-src.sh" )

# transpile TypeScript down to ES5 and builds a bundle for production with Rollup
$BIN/rollup --environment NODE_ENV:production -c "./rollup.config.js";

