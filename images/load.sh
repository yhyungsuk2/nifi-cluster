FILE_NAME=$1
cat "$FILE_NAME".part* > "$FILE_NAME"
docker load < "$FILE_NAME"
rm -rf "$FILE_NAME"

