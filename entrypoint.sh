#!/usr/bin/env bash

/Lindad -daemon --conf=/Linda.conf & tail -f /root/.Linda/debug.log

exec "$@"