FROM busybox
COPY web-server.sh .
RUN ./web-server.sh
