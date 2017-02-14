FROM debian:jessie
MAINTAINER jeremy@checkr.com

RUN apt-get update && apt-get install -y openssl nginx bash curl

ADD runme.sh /runme.sh
ADD sites-enabled-default /etc/nginx/sites-enabled/default

EXPOSE 80

CMD ["/runme.sh"]
