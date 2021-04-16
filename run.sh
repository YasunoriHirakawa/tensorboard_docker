#!/bin/bash

docker run \
    -it \
    -d \
    -p 6006:6007 \
    --mount type=bind,source=${1},target=/logs \
    tensorboard \
    tensorboard --logdir /logs --host 0.0.0.0 --port 6007
