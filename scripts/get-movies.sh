#!/bin/bash

# TOKEN="BAhJIiUwYTA0MjkzNWQyMjhlZTQwOTE5MTNhZTU3MjFlZTZmNQY6BkVG--09380f41d338a8c95443d5e7278ccd190251b295" scripts/get-movies.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/movies"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
