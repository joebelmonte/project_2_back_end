# TOKEN="BAhJIiVjNjA2MDk4MGQwNjhhNmZiYWMxOTVjMmYyNjIyNTJlMgY6BkVG--8819bbcac83dafc94cb152bc3106478f747f2b12" scripts/get-examples.sh

# chmod u+x scripts/get-examples.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/examples"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
