#!/usr/bin/env bash

/Lindad -daemon  & tail -f /root/.Linda/debug.log
sleep 20
/Lindad stop
mv Linda.conf /root/.Linda/Linda.conf
/Lindad -daemon  & tail -f /root/.Linda/debug.log

exec "$@"