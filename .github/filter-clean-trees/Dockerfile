FROM debian:stretch

RUN apt-get -y update && apt-get -y install git && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/man/?? /usr/share/man/??_*

COPY entrypoint.sh /usr/local/bin
ENTRYPOINT entrypoint.sh

