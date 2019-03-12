#!/bin/bash

curl "http://localhost:4741/trips/${TID}/todos" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "todo": {
      "title": "'"${NAME}"'",
      "description": "'"${DESCRIPTION}"'"
    }
  }'

echo
