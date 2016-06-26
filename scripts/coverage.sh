#!/bin/sh

set -e

# Transpile TypeScript for the unit tests
TSCONFIG=./tsconfig.json

 $(npm bin)/tsc \
        --sourceMap \
        --outDir ./build \
        --skipLibCheck \
        -t es6 \
        -m none \
        -p ${TSCONFIG}

echo "Gathering coverage report..." >&2

# Generate the coverage report with Istanbul
node --harmony ./node_modules/istanbul/lib/cli.js cover --root build/src --report lcov --report text \
     ./node_modules/mocha/bin/_mocha -- -R spec --check-leaks ./build/test/**/*.js

# Check for Travis CI
if [ $(env | grep TRAVIS_JOB_ID ) ] ; then
  # Push to coveralls.io
  cat ./coverage/lcov.info | ./node_modules/coveralls/bin/coveralls.js
  ## Push to codecov
  ./node_modules/.bin/codecov
  # Remove the coverage files and the directory
  rm -rf ./coverage
fi
