#!/bin/bash

# ID="9" TOKEN="BAhJIiU2NGFhMDM5N2NlOWFlZjE5MmEwZjVkMmU3MmEwMjU0OAY6BkVG--df398f328bcfd77140bc285d44e7d1a062777c14"  scripts/delete-movie.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/movies"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
