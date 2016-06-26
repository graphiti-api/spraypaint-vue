#!/bin/sh

set -e

BIN='node_modules/.bin'

# watch the TypeScript files and trigger recompilation on changes
$BIN/tsc --skipLibCheck --outDir ./build  -p . -w