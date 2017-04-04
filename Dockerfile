FROM alpine:3.5
MAINTAINER nbarnum <nbarnum@users.noreply.github.com>

ENV TRANQ_VERSION 0.8.1

RUN wget -q -O - \
    http://static.druid.io/tranquility/releases/tranquility-distribution-$TRANQ_VERSION.tgz | tar -xzf - -C /tmp && \
    mv /tmp/tranquility-distribution-$TRANQ_VERSION /tranquility


EXPOSE 8200

ENTRYPOINT ["/tranquility/bin/tranquility"]
CMD ["server", "-configFile", "/tranquility/conf/server.json.example"]
