FROM centos:centos7

MAINTAINER morningstar

RUN yum -y install httpd wget


# https://raw.githubusercontent.com/peternav/myrepo/master/index.html
#COPY index.html /var/www/html
RUN wget https://raw.githubusercontent.com/peternav/myrepo/master/index.html -P
/var/www/html

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]

EXPOSE 80



# new line
# issue1
