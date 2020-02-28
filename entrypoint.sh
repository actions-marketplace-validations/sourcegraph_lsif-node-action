#!/bin/sh

if [ -z "$OUT" ]; then
    echo 'file not supplied.'
    exit 1
fi

ABS_OUT="$(cd "$(dirname "${OUT}")" && pwd)/$(basename "${OUT}")"
cd "${PROJECT_ROOT}"
lsif-tsc --out "${ABS_OUT}" -p .
cd -
