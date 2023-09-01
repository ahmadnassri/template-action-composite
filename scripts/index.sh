#!/bin/bash

if [[ $GITHUB_EVENT_NAME != "push" && $GITHUB_EVENT_NAME != "pull_request" ]]; then
  echo "::warning title=action-name::action ran on unsupported event ${GITHUB_EVENT_NAME}"
  exit 0
fi

echo "bar=baz" >> "${GITHUB_OUTPUT}"

