#!/bin/bash

# ID="10" NEWNAME="Big Mermaid" TOKEN="BAhJIiVmMDhmMzRmOTBmMDEyMWJhNTJjOTU1Mzg5MTlkZTFkZAY6BkVG--8705d7eb40f0a99e6d5dc755d1f3e5a7e2ec7a9f"  scripts/update-movie.sh


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
