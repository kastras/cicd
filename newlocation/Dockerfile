FROM alpine:latest
MAINTAINER ruben.castrelo@prefapp.es
LABEL ENV=TESTING
RUN apk add --update supervisor nginx python3 python3-dev py3-pip build-base libressl-dev musl-dev libffi-dev && rm  -rf /tmp/* /var/cache/apk/*
RUN pip3 install pip --upgrade
RUN pip3 install rust certbot-nginx
RUN mkdir /etc/letsencrypt
COPY default.conf /etc/nginx/conf.d/default.conf
ADD supervisord.conf /etc/
CMD ["supervisord", "--nodaemon", "--configuration", "/etc/supervisord.conf"]
