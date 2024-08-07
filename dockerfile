FROM centos:latest
RUN yum install -y httpd \
zip\
unzip
RUN yum update -y
ADD C:\Users\vibra\Downloads\pexels-anjana-c-169994-674010.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip pexels-anjana-c-169994-674010.zip
RUN cp -rvf pexels-anjana-c-169994-674010/* .
RUN rm -rf pexels-anjana-c-169994-674010 pexels-anjana-c-169994-674010.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80 4504

