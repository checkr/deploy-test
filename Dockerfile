FROM alpine
MAINTAINER jeremy@checkr.com

RUN	apk update && \
	apk upgrade && \
	apk add --update openssl nginx bash

RUN mkdir -p /run/nginx

ADD runme.sh /runme.sh

EXPOSE 80

CMD ["/runme.sh"]
