FROM amazonlinux:latest

RUN yum update -y && \
    yum install -y httpd && \
    yum search wget && \
    yum install wget -y && \
    yum install unzip -y

RUN cd /var/www/html

RUN wget https://github.com/lokeshj2403/discovery/archive/refs/heads/main.zip

RUN unzip main.zip

RUN cp -r discovery-main/* /var/www/html/

RUN rm -rf discovery-main main.zip

EXPOSE 8070
