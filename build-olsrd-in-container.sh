cd /olsrd/temp
git clone https://github.com/OLSR/olsrd.git
cd olsrd/
git checkout 4973feb538b5b98b9d8ac2f8f474202f6d73de78
git remote add debbuild https://salsa.debian.org/debian/olsrd.git
git fetch debbuild
git checkout debbuild/master debian
echo "1.0" > debian/source/format
#vi debian/changelog # Set the version number on top line (optional)
apt update
apt install -y build-essential dpkg-dev debhelper bison flex pkg-config libgps-dev libgtk2.0-dev liblua50-dev

cp /olsrd/debian-rules debian/rules  # this comments out python-gtk2 stuff
cp /olsrd/debian-control debian/control  # this comments out python-gtk2 stuff

# fix dh_installdoc error with README file name
cd lib
cp  ./arprefresh/README_ARPREFRESH  ./arprefresh/README
cp  ./dyn_gw/README_DYN_GW  ./dyn_gw/README
cp  ./watchdog/README_WATCHDOG  ./watchdog/README
cp  ./secure/README_SECURE  ./secure/README
cp  ./info/README_INFO  ./info/README
cp  ./bmf/README_BMF  ./bmf/README
cp  ./jsoninfo/README_JSONINFO  ./jsoninfo/README
cp  ./pud/nmealib/README_NMEALIB  ./pud/nmealib/README
cp  ./pud/README_PUD  ./pud/README
cp  ./pud/wireformat-java/README_PUD_WIREFORMAT_JAVA  ./pud/wireformat-java/README
cp  ./dyn_gw_plain/README_DYN_GW_PLAIN  ./dyn_gw_plain/README
cp  ./p2pd/README_P2PD  ./p2pd/README
cp  ./pgraph/README_PGRAPH  ./pgraph/README
cp  ./netjson/README_NETJSON  ./netjson/README
cp  ./quagga/README_QUAGGA  ./quagga/README
cp  ./nameservice/README_NAMESERVICE  ./nameservice/README
cp  ./txtinfo/README_TXTINFO  ./txtinfo/README
cp  ./sgwdynspeed/README_SGWDYNSPEED  ./sgwdynspeed/README
cp  ./poprouting/README_POPROUTING  ./poprouting/README
cp  ./httpinfo/README_HTTPINFO  ./httpinfo/README
cp  ./mini/README_MINI  ./mini/README
cp  ./mdns/README_MDNS  ./mdns/README
cp  ./dot_draw/README_DOT_DRAW  ./dot_draw/README
cd ..

dpkg-buildpackage -uc -us

cp ../*.deb /olsrd/mount/
