#!/bin/sh

[ $# -eq 0 ] && SERVICE="$0"

if [ $# -gt 0 ];
then
	SERVICE="$1"
	shift 1
fi

BIN=""
for p in /bin /sbin /usr/bin /usr/sbin /usr/local/bin /usr/local/sbin;
do
	if [ -x "$p/$SERVICE" ];
	then
		BIN="$p/$SERVICE"
		break
	fi
done
[ -z "$BIN" ] && exit 1

PID=$(pidof -o %PPID "$BIN")

case $1 in
	-s)
		[ -z "$PID" ] && $BIN;
		;;
	-k)
		[ -n "$PID" ] && kill -9 "$PID" > /dev/null 2>&1 ;
		;;
	*)
		echo "usage: $0 -s|-k"
		exit 1
esac

