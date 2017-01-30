#!/bin/sh -xe
./fmap_decode /`hostname -s`/books/Chromebook/spi/snow-spi.rom | sort \
	| grep -v fmap_signature | grep -v R[OW]_ | grep -v WP_ | \
	cut -d\" -f2,4,6 | sed -e 's/"0x/:/' -e 's/"/ /' -e 's/0x//'
