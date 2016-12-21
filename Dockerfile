FROM debian:jessie
MAINTAINER jeremy@checkr.com

RUN apt-get update && apt-get install -y openssl nginx bash curl

ADD runme.sh /runme.sh

EXPOSE 80

CMD ["/runme.sh"]
