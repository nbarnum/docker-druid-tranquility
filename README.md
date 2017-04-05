```shell
docker run \
    -v `pwd`/conf:/usr/local/tranquility/conf \
    -p 8200:8200 \
    nbarnum/tranquility \
        server \
        -J-Xms0m \
        -J-Xmx128m \
        -J-XX:+PrintGC \
        -Dzookeeper.connect=zookeeper \
        -Djava.io.tmpdir=/usr/local/tranquility/var/tmp \
        -configFile=conf/server.json
```

Expects a `server.json` to be provided in the local `conf/` dir.
