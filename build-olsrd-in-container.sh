#
# download OLSR
#
cd /olsrd/temp
git clone https://github.com/opennet-initiative/olsrd/
cd olsrd/

dpkg-buildpackage -b -uc -us

cp ../*.deb /olsrd/mount/
