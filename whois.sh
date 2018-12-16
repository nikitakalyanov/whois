#!/bin/bash

WHOIS="https://www.whois.com/whois/"

RES_DIR="$1"

function download_html {
        wget "$WHOIS$1" -O "$RES_DIR/$( tr './' '_' <<< "$1" ).html"
}

if [ "$2" = "domain" ]; then
	DOMAIN="$3"
	download_html "$DOMAIN"
fi

if [ "$2" = "file" ]; then
	FILE="$3"
	while read -r line || [[ -n "$line" ]]; do
		download_html "$line"
	done < "$FILE"
fi
