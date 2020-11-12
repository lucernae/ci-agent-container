#!/usr/bin/env bash

ROOT_DIR=${ROOT_DIR:-/data}
REQUIREMENTS_FILE=${REQUIREMENTS_FILE:-/data/requirements.txt}

cd "${ROOT_DIR}"

if [ -f "${REQUIREMENTS_FILE}" ]; then
  pip install -r "${REQUIREMENTS_FILE}"
fi

exec python "$@"
