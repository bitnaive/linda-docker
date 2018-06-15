#!/usr/bin/env bash

/Lindad -daemon & tail -f /root/.Linda/debug.log

exec "$@"