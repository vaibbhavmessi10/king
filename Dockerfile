FROM centos:latest
MAINTAINER vaibhavghongade99@gmaol.com
RUN yum install httpd -y \
  zip \
unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page282/yogasana.zip /var/www/html
WORKDIR /var/www/html
RUN unzip yogasana.zip
RUN cp -rvf yogasana-html/* .
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
