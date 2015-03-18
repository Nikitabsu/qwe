#!/bin/sh
time=5
while true; do
	wget tut.by -q
	cat index.html | grep '<span class="red">[-+][0-9]\+&deg;</span>' -o | grep '[-+][0-9]\+' -o
	rm index.html
	sleep $time
done
