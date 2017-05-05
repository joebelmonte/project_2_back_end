#!/bin/bash

# ID="8" TOKEN="BAhJIiVjNTRmN2QwOGY4YzM2NDQ1ZDc4YTg5NjE4NTA0ZDExZgY6BkVG--075074e930eda69a53cb44f1eedac1adc9575975"  scripts/delete-movie.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/movies"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
