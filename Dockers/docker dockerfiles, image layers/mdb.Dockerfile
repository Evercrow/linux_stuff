FROM alpine:3.18

ENV LANG=C.UTF-8


RUN mkdir /docker-entrypoint-initdb.d && \
    apk -U upgrade && \
    apk add --no-cache mariadb mariadb-client && \
    # clean up
    rm -rf /var/cache/apk/*

VOLUME /home/ever/homeworks/dockers/4/dockerfile/mdb/

EXPOSE 3306


CMD ["mariadb"]
