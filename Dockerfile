FROM debian:buster

WORKDIR /opt/dump1090

RUN apt-get update
RUN apt-get upgrade -y

# Install NGINX
RUN apt-get install -y nginx

# Install build dependencies
RUN apt-get install -y \
      build-essential \
      debhelper \
      librtlsdr-dev \
      pkg-config \
      dh-systemd \
      libncurses5-dev \
      libbladerf-dev

COPY . .

# Setup NGINX
RUN mkdir /run/dump1090
RUN mv nginx.conf /etc/nginx/sites-available/dump1090
RUN ln -s /etc/nginx/sites-available/dump1090 /etc/nginx/sites-enabled/

# Build dump1090
RUN make dump1090

EXPOSE 8080 30001 30002 30003 30004 30005 30104

ENTRYPOINT [ "./docker-start.sh" ]
