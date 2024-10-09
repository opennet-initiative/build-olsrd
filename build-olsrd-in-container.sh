#
# download OLSR
#
cd /olsrd/temp
git clone https://github.com/opennet-initiative/olsrd/
cd olsrd/
git checkout 2acf4758ac1e4786a524d7ce2ed95b6cc49faffa

dpkg-buildpackage -uc -us

cp ../*.deb /olsrd/mount/
