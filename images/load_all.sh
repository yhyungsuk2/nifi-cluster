CURRENT_DIR=$(dirname $0)

images=$(ls "$CURRENT_DIR"/*.partaa)
for image in $images; do
  name="${image%.partaa}"
  echo "$name"
  sh "$CURRENT_DIR"/load.sh "$name"
done
