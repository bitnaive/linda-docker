#!/usr/bin/env bash

cd node

wget -O bootstrap.zip $(curl -XGET https://bit.ly/lindabootstrap | grep "<a href" | sed -r 's#^.*<a href="([^"]+)">([^<]+)</a>.*$#\1#')?dl=1

unzip bootstrap.zip

rm -rf bootstap.zip

cd ../

docker-compose build