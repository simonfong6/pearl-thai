DIRECTORY_NAME="pearl-thai"
IMAGE_NAME="pearl-thai.image"
CONTAINER_NAME="pearl-thai.image.container"
PORT="4000"

docker container run \
    -it \
    --rm \
    --name $IMAGE_NAME \
    --user vscode \
    --mount type=bind,source=/home/ubuntu/Projects/$DIRECTORY_NAME,target=/workspace/$DIRECTORY_NAME \
    --workdir /workspace/$DIRECTORY_NAME \
    --publish $PORT:$PORT \
    $IMAGE_NAME /bin/bash
