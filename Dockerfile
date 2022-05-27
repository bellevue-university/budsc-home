FROM ubuntu:20.04

LABEL maintainer="Shawn Hermans <shermans@bellevue.edu>"

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update \
 && apt-get install -yq \
    nginx \
    wget \
    sudo \
 && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN mkdir /tmp/dashboard
COPY dashy/dist /tmp/dashboard
WORKDIR /tmp/dashboard
RUN mv /tmp/dashboard/* /var/www/html && rm -rf /tmp/dashboard

# Run Nginx
CMD service nginx start && tail -F /var/log/nginx/error.log

EXPOSE 80