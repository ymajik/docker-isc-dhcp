FROM debian:jessie

RUN DEBIAN_FRONTEND=noninteractive && \
apt-get update && \
apt-get install -y netmask isc-dhcp-server

ADD dhcpd.conf /etc/dhcp/dhcpd.conf
#ADD service.conf /etc/default/isc-dhcp-server
EXPOSE 67
EXPOSE 67/udp
# ipv6 dhcp
EXPOSE 547
EXPOSE 547/udp
# dhcp failover1
EXPOSE 647
EXPOSE 647/udp
# dhcp failover2
EXPOSE 847
EXPOSE 847/udp
ENTRYPOINT ["/dhcpd"]
CMD ["-f", "-cf", "/etc/dhcp/dhcpd.conf", "--no-pid"]

