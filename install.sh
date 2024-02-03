#!/bin/sh
if [ "$(id -u)" != '0' ]; then
	echo "$0: must be run as root" 1>&2
	exit 1
fi

if cd "${0%/*}"; then
	make clean install
	make clean
fi
