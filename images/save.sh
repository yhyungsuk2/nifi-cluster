IMAGE_NAME=$1
FILE_NAME=$2

docker save -o "$FILE_NAME" "$IMAGE_NAME"
split -b 100M "$FILE_NAME" "$FILE_NAME".part
rm -rf "$FILE_NAME"

