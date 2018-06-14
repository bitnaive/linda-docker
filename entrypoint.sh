#!/usr/bin/env bash

/root/Lindad -daemon --conf=/root/.Linda/Linda.conf & tail -f /root/.Linda/debug.log

exec "$@"