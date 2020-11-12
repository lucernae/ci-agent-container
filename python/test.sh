#!/usr/bin/env bash


for file in ci/*.yml ; do
  cp -f "$file" docker-compose.override.yml
  docker-compose run python-ci-agent
  echo "Exit code $?"
done
