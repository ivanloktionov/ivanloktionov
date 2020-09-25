
content=`echo -n 'single-line webserver via bash'` && { echo -e 'HTTP/1.0 200 OK\r\nContent-Length:' "$(echo -n $content| wc -c)";echo -e "\n$content"; }| nc -w 30 -l -p 8443; exit 0
