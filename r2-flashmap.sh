#!/bin/sh -xe
./fmap_decode /`hostname -s`/books/Chromebook/spi/snow-spi.rom | sort | \
	tee /dev/shm/fmap_decode | \
	grep -v fmap_signature | \
	sed 's/[="][=" ]*/ /g' | awk '{ print "fz " $6 " @" $2 }'
