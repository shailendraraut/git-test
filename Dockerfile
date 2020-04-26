
FROM  ubuntu:14.04

RUN apt-get update && apt-get install -y vim curl apache2 iputils-ping

COPY index.html /var/www/html/

EXPOSE 80

ENTRYPOINT ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
