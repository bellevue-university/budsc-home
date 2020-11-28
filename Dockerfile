FROM ubuntu:20.04

LABEL maintainer="Shawn Hermans <shermans@bellevue.edu>"

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update \
 && apt-get install -yq \
    nginx \
    wget \
    sudo \
 && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN wget --quiet --no-check-certificate https://github.com/gohugoio/hugo/releases/download/v0.79.0/hugo_0.79.0_Linux-64bit.deb

# Install Hugo
RUN apt install ./hugo_0.79.0_Linux-64bit.deb

RUN mkdir /tmp/hugo-site
COPY hugo-site /tmp/hugo-site
WORKDIR /tmp/hugo-site
# Build Hugo Documentation
RUN hugo && mv /tmp/hugo-site/public/* /var/www/html && rm -rf /tmp/hugo-site

# Run Nginx
CMD service nginx start && tail -F /var/log/nginx/error.log

EXPOSE 80