#!/usr/bin/bash

while true; do content=`echo -n 'single-line webserver via bash'` && { echo -e 'HTTP/1.0 200 OK\r\nContent-Length:' "$(echo -n $content| wc -c)";echo -e "\n$content"; }| nc -l 8443; done
