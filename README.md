Steps for reproducing a specific olsrd build.

# Commands

    sudo docker build -t build-olsrd .
    sudo docker run build-olsrd
    DIR=/tmp/olsr-build/share/
    sudo docker run --rm -it -v $DIR:/olsrd/mount build-olsrd

Now start build-olsrd-in-container.sh script in docker container.

All .deb files are now in $DIR
