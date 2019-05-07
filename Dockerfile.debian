FROM debian:jessie
MAINTAINER jeremy@checkr.com

ARG DOCKER_SETUP_VAR="test"
ENV DOCKER_SETUP_VAR=${DOCKER_SETUP_VAR}}

RUN apt-get update && apt-get install -y openssl nginx bash curl
RUN echo ${DOCKER_SETUP_VAR} > ./setup_vars.txt

ADD runme.sh /runme.sh
ADD sites-enabled-default /etc/nginx/sites-enabled/default

EXPOSE 80

CMD ["/runme.sh"]
