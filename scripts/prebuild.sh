#!/bin/sh

(

set -e

# remove the build folder if it does exist
if [ -d build ]; then
   rm -rf ./build
fi

./node_modules/.bin/tsc --version

# Transpil all TypeScript files in the project
TSCONFIG=./tsconfig.json

echo "> compiling..."
 ./node_modules/.bin/tsc  \
        --outDir ./build \
        -t es5 \
        -m es6 \
        --skipLibCheck \
        -p ${TSCONFIG}
)
