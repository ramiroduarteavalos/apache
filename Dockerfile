FROM ubuntu

RUN apt-get update

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get -y install --no-install-recommends apache2

ADD index.html /var/www/html

CMD ["apachectl", "-D", "FOREGROUND"]
