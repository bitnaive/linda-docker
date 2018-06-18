#!/usr/bin/env bash

/Lindad -printtoconsole & tail -f /dev/null

exec "$@"