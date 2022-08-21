FROM centos:latest

RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*

RUN yum update -y \
    && yum install httpd httpd-tools -y \
    && yum install epel-release -y \
    && yum update -y \
    && yum install htop -y \
    && yum install vim -y

ADD . /var/www/html

EXPOSE 80

ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]

#docker build -t home:latest -f Dockerfile .
# docker tag home:latest bonglv/home:latest
# docker push bonglv/home:latest