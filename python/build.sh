#!/usr/bin/env bash

if [ -n "${ALL_BUILD}" ]; then
  for file in env_matrix/*.env; do
    cp -f "$file" .env
    source .env

    docker-compose build

    docker push "${REPO_NAME}/python-ci-agent:${TAG}"
  done
else
  source .env

  docker-compose build

  docker push "${REPO_NAME}/python-ci-agent:${TAG}"
fi
