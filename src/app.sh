#!/bin/sh

until node app.js; do
	echo "Crashed with exit code $?. Respawning.." > &2
	sleep 1
done
