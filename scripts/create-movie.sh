#!/bin/bash
# name="New Example" TOKEN="BAhJIiU3NWQzYmM4YjExMDdlZGQzMzAyMmUyOTcyOWViMmYxMQY6BkVG--3b58b6e33663570d79cb8e7818cc2efc9298398e" year_released=1950 mpaa_rating="G" user_rating=9 length=100 ownership_status=true ownership_type="iTunes" last_viewing="2016-01-01" times_watched=10 scripts/create-movie.sh

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
      "year_released": "'"${year_released}"'",
      "mpaa_rating": "'"${mpaa_rating}"'",
      "user_rating": "'"${user_rating}"'",
      "length": "'"${length}"'",
      "ownership_status": "'"${ownership_status}"'",
      "ownership_type": "'"${ownership_type}"'",
      "last_viewing": "'"${last_viewing}"'",
      "times_watched": "'"${times_watched}"'",
      "user_id": "32"
    }
  }'

echo
