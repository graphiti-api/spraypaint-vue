#!/bin/sh

# if the tests fail, abort (errexit)
set -e

BIN=./node_modules/.bin

# transpile the TypeScript source code to ES6
 TSCONFIG=./tsconfig.json

 $BIN/tsc  \
        --outDir ./build \
        -t es6 \
        --skipLibCheck \
        -p ${TSCONFIG}

# validate all source files
"./scripts/lint-src.sh"

# transpile TypeScript down to ES5 and builds a bundle for production with Rollup
$BIN/rollup --environment NODE_ENV:production -c

