FROM alpine
MAINTAINER jeremy@checkr.com

RUN	apk update && \
	apk upgrade && \
	apk add --update openssl nginx

RUN mkdir -p /run/nginx

EXPOSE 80

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
