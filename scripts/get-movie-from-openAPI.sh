#!/bin/bash

# NAME="Forrest" scripts/get-movie-from-openAPI.sh

# chmod u+x scripts/get-movie-from-openAPI.sh


API="http://www.omdbapi.com/?"
URL_PATH="t="
curl "http://www.omdbapi.com/?t=$NAME" \
  --include \
  --request GET \

echo
