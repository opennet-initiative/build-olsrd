#!/usr/bin/env bash

cd /olsrd/temp
git clone https://github.com/opennet-initiative/olsrd/
cd olsrd/

dpkg-buildpackage -b -uc -us

DEB_RELEASE=$(cat /etc/debian_version | cut -d. -f1)
mkdir /olsrd/mount/debian$DEB_RELEASE
cp ../*.deb /olsrd/mount/debian$DEB_RELEASE/
