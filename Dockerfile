FROM ubuntu:latest
RUN export DEBIAN_FRONTEND=noninteractive && ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime
RUN apt-get update
RUN apt-get install -y tzdata apache2
EXPOSE 80
CMD ["apache2", "-DFOREGROUND"]