#!/bin/bash

# TOKEN="BAhJIiU1YzJkODNkZTZiNjVkMzRmODRkMDRhNTQ2MzA5Yjk5ZQY6BkVG--1b7e021963a0655210c9e90be26249d18ad608ba" scripts/get-movies.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/movies"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
