#!/bin/sh

set -e

BIN='node_modules/.bin'

# validate all source files
( exec "./scripts/lint-src.sh" )

# watch the TypeScript files and trigger recompilation on changes
$BIN/tsc --skipLibCheck --outDir ./build  -p . -w