FROM debian:stable
MAINTAINER Hideki Saito <hideki@hidekisaito.com>
RUN apt-get update
RUN apt-get -y install apache2 php5
RUN apt-get -y upgrade
RUN rm /var/www/*
ADD files/ZeroBin /var/www
RUN mkdir /var/www/tmp
RUN chmod go+w /var/www/tmp
RUN mkdir /var/www/data
RUN chmod go+w /var/www/data
EXPOSE 80
ADD files/start.sh /start.sh
ENTRYPOINT "/start.sh"
