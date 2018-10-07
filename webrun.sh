#!/bin/bash

function usage() {
	echo "Usage: $0 [-h] url"
}

case "$1" in
	"-h")
		usage
		exit 0
		;;
	"-"*)
		usage
		exit 1
		;;
esac

if [ $# -ne 1 ]
then
	usage
	exit 1
fi

/bin/bash -c "$(curl -fsSL $1)"
