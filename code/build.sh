#!/bin/bash

TAG=$(cat /dev/urandom | env LC_CTYPE=C tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1 | awk '{print tolower($0)}')

echo ">>>> Building images with tag ${TAG} <<<<"
docker build -t saschariedel/hello-php:${TAG} ./images/php/
docker push saschariedel/hello-php:${TAG}

docker build -t saschariedel/hello-nginx:${TAG} ./images/nginx/
docker push saschariedel/hello-nginx:${TAG}