FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    curl

WORKDIR /
VOLUME ["/root/.Linda"]
RUN wget https://github.com/Lindacoin/Linda/releases/download/2.0.0.1/Unix.Lindad.v2.0.0.1g.tar.gz

RUN tar -xvf Unix.Lindad.v2.0.0.1g.tar.gz  -C /

RUN rm Unix.Lindad.v2.0.0.1g.tar.gz

RUN chmod +x /Lindad

RUN /Lindad

ADD node/database /root/.Linda/database
ADD node/txleveldb /root/.Linda/txleveldb
ADD node/blk0001.dat /root/.Linda/
ADD node/Linda.conf /root/.Linda/
ADD node/peers.dat /root/.Linda/
ADD node/autoBootstrap.cmd /root/.Linda/

EXPOSE 33820
EXPOSE 33821

ADD ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]