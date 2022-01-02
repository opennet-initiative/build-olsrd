Steps for generating olsrd [1] debian 11 package via docker container.

[1] specific olsrd build https://github.com/OLSR/olsrd/tree/4973feb538b5b98b9d8ac2f8f474202f6d73de78


# Commands

    sudo docker build -t build-olsrd .
    sudo docker run build-olsrd
    mkdir /tmp/olsr-build-share
    DIR=/tmp/olsr-build-share
    sudo docker run --detach=false --rm -v $DIR:/olsrd/mount build-olsrd

All .deb files are now in $DIR of the docker host.
