#!/bin/bash

curl "http://localhost:4741/trips/${TID}/todos/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
