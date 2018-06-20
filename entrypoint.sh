#!/usr/bin/env bash

cp /Linda.conf.template /root/.Linda/Linda.conf
echo "\n masternodeprivkey=$MASTERNODEPRIVKEY" >> /root/.Linda/Linda.conf
echo "\n port=$PORT" >> /root/.Linda/Linda.conf
echo "\n rpcuser=$RPCUSER" >> /root/.Linda/Linda.conf
echo "\n rpcpassword=$RPCPASSWORD">> /root/.Linda/Linda.conf

/Lindad -printtoconsole & tail -f /dev/null

exec "$@"