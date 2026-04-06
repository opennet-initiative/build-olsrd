Steps for generating olsrd Debian packages via Docker container.

# Commands

## Debian 11

    sudo docker build -f Dockerfile.debian11 -t build-olsrd-debian11 .
    DIR=/tmp/olsr-build-share
    mkdir $DIR
    sudo docker run --detach=false --rm -v $DIR:/olsrd/mount build-olsrd-debian11

All .deb files are now in $DIR of the docker host.

## Debian 12

    sudo docker build -f Dockerfile.debian12 -t build-olsrd-debian12 .
    DIR=/tmp/olsr-build-share
    mkdir $DIR
    sudo docker run --detach=false --rm -v $DIR:/olsrd/mount build-olsrd-debian12

All .deb files are now in $DIR of the docker host.

## Debian 13

    sudo docker build -f Dockerfile.debian13 -t build-olsrd-debian13 .
    DIR=/tmp/olsr-build-share
    mkdir $DIR
    sudo docker run --detach=false --rm -v $DIR:/olsrd/mount build-olsrd-debian13

All .deb files are now in $DIR of the docker host.
