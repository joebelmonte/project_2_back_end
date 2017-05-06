# TOKEN="BAhJIiVjNjA2MDk4MGQwNjhhNmZiYWMxOTVjMmYyNjIyNTJlMgY6BkVG--8819bbcac83dafc94cb152bc3106478f747f2b12" ID="1" scripts/get-example.sh 

# chmod u+x scripts/get-example.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/examples"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
