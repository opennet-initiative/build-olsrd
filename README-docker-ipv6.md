# IPv6 in docker

Source: https://medium.com/@skleeschulte/how-to-enable-ipv6-for-docker-containers-on-ubuntu-18-04-c68394a219a2

Create /etc/docker/daemon.json with content:

    {
      "ipv6": true,
      "fixed-cidr-v6": "fd00::/80"
    }

then restart docker:

    systemctl restart docker

Then add NAT entry. The following is "non-permanent"!

    ip6tables -t nat -A POSTROUTING -s fd00::/80 ! -o docker0 -j MASQUERADE
