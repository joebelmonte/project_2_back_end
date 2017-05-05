#!/bin/bash

# ID="7" NEWNAME="Tarzan" TOKEN="BAhJIiU5MjJjM2ExOTkzMTk3M2I4MjM5OTJmNjU3YzMyYTQ0YwY6BkVG--125b99ea554153cf5cfc59e02fecfc32812956b1"  scripts/update-movie.sh


API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/movies"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "movie": {
      "name": "'"${NEWNAME}"'"
    }
  }'

echo
