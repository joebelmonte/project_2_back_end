#!/bin/bash
# name="Frozen" TOKEN="BAhJIiViMTVkYjlkNjNmN2Y4MDU3YjFhNjFkY2EyNmYyMDIxZgY6BkVG--13bdb3ce8b5f30f1295642508b478de5fa02894e" scripts/create-movie.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/movies"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "movie": {
      "name": "'"${name}"'",
      "user_id": "1"
    }
  }'

echo
