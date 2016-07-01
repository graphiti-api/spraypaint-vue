#!/bin/sh

# Push to coveralls.io
cat ./coverage/lcov.info | ./node_modules/coveralls/bin/coveralls.js
## Push to codecov
./node_modules/.bin/codecov
# Remove the coverage files and the directory
rm -rf ./coverage