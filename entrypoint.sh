#!/usr/bin/env bash

/Lindad -printtoconsole & tail -f /root/.Linda/debug.log

exec "$@"