FROM ubuntu

RUN apt-get update
RUN apt-get install -y iputils-ping

COPY run.sh /run.sh
RUN chmod +x /run.sh

ENV URL "google.com"
STOPSIGNAL SIGINT
CMD ["/run.sh"]