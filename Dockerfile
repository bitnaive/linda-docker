FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    curl

RUN mkdir /root/.Linda

WORKDIR /root/.Linda

RUN wget https://github.com/Lindacoin/Linda/releases/download/2.0.0.1/Unix.Lindad.v2.0.0.1g.tar.gz

RUN tar -xvf Unix.Lindad.v2.0.0.1g.tar.gz  -C /root

RUN rm Unix.Lindad.v2.0.0.1g.tar.gz

RUN chmod +x /root/Lindad

EXPOSE 33820

CMD ["/root/Lindad"]