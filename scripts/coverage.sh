#!/bin/sh

set -ex

# Transpile TypeScript for the unit tests
TSCONFIG=./tsconfig.json

 $(npm bin)/tsc \
        --sourceMap \
        --outDir ./build \
        --skipLibCheck \
        -t es6 \
        -m none \
        -p ${TSCONFIG}

# Generate the coverage report with Istanbul
node --harmony ./node_modules/istanbul/lib/cli.js cover --root build/src --report lcov --report text \
     ./node_modules/mocha/bin/_mocha -- -R spec --check-leaks ./build/test/**/*.js

# Check for Travis CI and Circle-CI environment
if [ $(env | grep TRAVIS_JOB_ID ) ] || [ $(env | grep CIRCLECI) ] ; then
  # Push to coveralls.io
  cat ./coverage/lcov.info | ./node_modules/coveralls/bin/coveralls.js
  ## Push to codecov
  ./node_modules/.bin/codecov
  # Remove the directory
  rm -rf ./coverage
   
 # - bash <(curl -s https://codecov.io/bash)
fi
