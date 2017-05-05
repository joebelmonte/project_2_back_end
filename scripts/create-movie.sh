#!/bin/bash
# name="Cinderella" TOKEN="BAhJIiUyZTE2MzIxZjk1MzI0MDI3OTBmYWUyZTNjODBhNGFmMwY6BkVG--25c09d0079f8f335e9e8985f9f40c2f8bf8d1e5d" year_released=1950 mpaa_rating="G" user_rating=9 length=100 ownership_status=true ownership_type="iTunes" last_viewing="2016-01-01" times_watched=10 scripts/create-movie.sh

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
      "user_id": "2"
    }
  }'

echo
