#!/bin/bash

# TOKEN="BAhJIiVkMzk3NjhiMmQ3Yjc0NTk2MDkwODRmYzEwZmY2ZjExZgY6BkVG--d3392683b1eff5be6a810dae51beddf4b2089c96" scripts/get-movies.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/movies"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
