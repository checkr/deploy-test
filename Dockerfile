FROM alpine
MAINTAINER jeremy@checkr.com

RUN	apk update && \
	apk upgrade && \
	apk add --update openssl nginx bash curl

RUN mkdir -p /run/nginx

ADD runme.sh.alpine /runme.sh

EXPOSE 80

CMD ["/runme.sh"]
