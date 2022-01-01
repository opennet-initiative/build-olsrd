#
# download OLSR
#
cd /olsrd/temp
git clone https://github.com/OLSR/olsrd.git
cd olsrd/
git checkout 4973feb538b5b98b9d8ac2f8f474202f6d73de78

#
# build .deb
#
git remote add debbuild https://github.com/leoss/olsrd-debian-package.git
git fetch debbuild
git checkout debbuild/debian_package debian
#vi debian/changelog # Set the version number on top line (optional)

dpkg-buildpackage -uc -us

cp ../*.deb /olsrd/mount/
