FROM centos:latest
RUN yum install -y httpd \
zip\
unzip
RUN yum update -y
ADD F:\newproject.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip newproject.zip
RUN cp -rvf newproject/* .
RUN rm -rf newproject newproject.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80 

