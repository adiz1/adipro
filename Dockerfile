FROM centos:7
RUN yum install -y httpd\
zip\
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/downloads/pages254/photogenic.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip photogenic/* .
RUN cp -rvf photogenic photgenic.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
