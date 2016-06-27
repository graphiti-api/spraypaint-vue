#!/bin/sh

set -e

BUILD_DIR=./build

(

# Transpile TypeScript for the unit tests
TSCONFIG=./tsconfig.json

 ./node_modules/.bin/tsc \
        --sourceMap \
        --outDir ${BUILD_DIR} \
        --skipLibCheck \
        -t es6 \
        -m none \
        -p ${TSCONFIG}
)

echo "Gathering coverage report..." >&2

# Generate the coverage report with Istanbul
node --harmony ./node_modules/istanbul/lib/cli.js cover --root ${BUILD_DIR}/src --report lcov --report text \
     ./node_modules/mocha/bin/_mocha -- -R spec --check-leaks ${BUILD_DIR}/test/**/*.js
