#!/bin/bash

curl "http://localhost:4741/trips/${TID}/todos/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "todo": {
      "title": "'"${NAME}"'",
      "description": "'"${DESCRIPTION}"'"
    }
  }'

echo
