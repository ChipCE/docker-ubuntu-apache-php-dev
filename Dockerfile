FROM       ubuntu:18.04

RUN apt-get update

RUN apt-get update && apt-get install -y tzdata && apt-get -y -q install apache2 php libapache2-mod-php
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
# RUN rm /var/www/html/index.html
# COPY /source /var/www/html
EXPOSE 80
EXPOSE 443

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

