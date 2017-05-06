#!/bin/bash

# TOKEN="BAhJIiVkNWEwOTUwZjAzNmU0YTY0ZDAwYTFkY2RkOGJjZWViNQY6BkVG--e1b7457aeca6a98b7d11fabdb45c26371c3aa384" ID="10" scripts/get-movie.sh

# chmod u+x scripts/get-movie.sh


API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/movies"
curl "${API}${URL_PATH}/$ID" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
