#!/usr/bin/env bash

/root/Lindad -daemon & tail -f /root/.Linda/debug.log

exec "$@"