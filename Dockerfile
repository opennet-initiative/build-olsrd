FROM debian:11
RUN apt-get update && apt-get install -y \
    git \
    vim 

RUN mkdir -p /olsrd/temp
RUN mkdir -p /olsrd/mount
ADD debian-control /olsrd/debian-control
ADD debian-rules /olsrd/debian-rules
ADD build-olsrd-in-container.sh /olsrd/build-olsrd-in-container.sh

WORKDIR /olsrd
CMD ["bash"]


