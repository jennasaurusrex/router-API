#!/bin/bash

curl "http://localhost:4741/todos/" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "todo": {
      "trip_id": "'"${TID}"'",
      "title": "'"${NAME}"'",
      "description": "'"${DESCRIPTION}"'"
    }
  }'

echo
