Steps for reproducing a specific olsrd build.

# Commands

    sudo docker build -t build-olsrd .
    sudo docker run build-olsrd
    DIR=/tmp/olsr-build/share/
    sudo docker run --rm -it -v $DIR:/olsrd/mount build-olsrd

You are now logged into bash of the container. Next, start build-olsrd-in-container.sh script, e.g.

    root@72b92ebbd7ab:/olsrd# ./build-olsrd-in-container.sh 

All .deb files are now in $DIR of the docker host.
