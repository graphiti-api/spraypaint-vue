#!/bin/sh

set -ex pipefail

# watch the TypeScript files and trigger recompilation on changes
$(npm bin)/tsc --skipLibCheck --outDir ./build  -p . -w