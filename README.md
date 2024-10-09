Steps for generating olsrd [1] Debian 11 package via Docker container.

[1] specific olsrd build https://github.com/OLSR/olsrd/tree/4973feb538b5b98b9d8ac2f8f474202f6d73de78


# Commands

## Debian 11

    cp Dockerfile.debian11 Dockerfile
    sudo docker build -t build-olsrd-debian11 .
    DIR=/tmp/olsr-build-share
    mkdir $DIR
    sudo docker run --detach=false --rm -v $DIR:/olsrd/mount build-olsrd-debian11

All .deb files are now in $DIR of the docker host.

## Debian 12

    cp Dockerfile.debian12 Dockerfile
    sudo docker build -t build-olsrd-debian12 .
    DIR=/tmp/olsr-build-share
    mkdir $DIR
    sudo docker run --detach=false --rm -v $DIR:/olsrd/mount build-olsrd-debian12

All .deb files are now in $DIR of the docker host.
