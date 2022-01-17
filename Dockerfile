FROM ubuntu:18.04

RUN apt-get update -y

RUN apt-get install -y apache2

#COPY index.html /var/www/html
COPY target/projCert/website/* /var/www/html/

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
