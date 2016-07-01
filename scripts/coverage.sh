#!/bin/sh

set -e

# Transpile TypeScript for the unit tests
npm run pretest
# Gathering coverage report
npm run coverage