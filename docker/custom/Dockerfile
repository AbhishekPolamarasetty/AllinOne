FROM ubuntu:latest
RUN apt update
RUN apt update && apt install apache2 git wget -y 
COPY demo /var/www/html/
RUN cd /var/www/html/
CMD ["/usr/sbin/apache2ctl","-D", "FOREGROUND"]
VOLUME /var/log/apache2
WORKDIR /var/www/html/
EXPOSE 80