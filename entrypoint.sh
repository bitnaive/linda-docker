#!/usr/bin/env bash

cp /Linda.conf.template /root/.Linda/Linda.conf
echo "masternodeprivkey=$MASTERNODEPRIVKEY" >> /root/.Linda/Linda.conf
echo "port=$PORT" >> /root/.Linda/Linda.conf
echo "rpcuser=$RPCUSER" >> /root/.Linda/Linda.conf
echo "rpcpassword=$RPCPASSWORD">> /root/.Linda/Linda.conf

/Lindad -printtoconsole & tail -f /dev/null

exec "$@"