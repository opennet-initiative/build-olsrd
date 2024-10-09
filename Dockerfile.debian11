FROM debian:11
RUN apt-get update && apt-get install -y \
    git vim \
    build-essential dpkg-dev debhelper bison flex pkg-config libgps-dev libgtk2.0-dev liblua50-dev

RUN mkdir -p /olsrd/temp
RUN mkdir -p /olsrd/mount
ADD build-olsrd-in-container.sh /olsrd/build-olsrd-in-container.sh

WORKDIR /olsrd
CMD ["bash","./build-olsrd-in-container.sh"]
