#!/bin/sh
set -e

if [ "$1" = 'memcached' ]; then
	chown -R memcached .
	exec gosu memcached "$@"
fi

exec "$@"
