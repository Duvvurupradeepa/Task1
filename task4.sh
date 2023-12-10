4. Create a script to display all active network interfaces and their details on the system.


#!/bin/bash

echo "Active Network Interfaces:"

# Using ifconfig command
echo -e "\nUsing ifconfig command:"
ifconfig -a

# Using ip command
echo -e "\nUsing ip command:"
ip addr show

# Using netstat command
echo -e "\nUsing netstat command:"
netstat -i

# Additional details using ethtool (install if not available)
if command -v ethtool &> /dev/null; then
    echo -e "\nAdditional details using ethtool:"
    for interface in $(ifconfig -a | grep '^[a-zA-Z]' | awk '{print $1}'); do
        echo -e "\nInterface: $interface"
        ethtool $interface
    done
else
    echo -e "\nethtool is not installed. Install it to get additional details."
fi





OUTPUT : Active Network Interfaces:

Using ifconfig command:
enp0s3: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 10.0.2.15  netmask 255.255.255.0  broadcast 10.0.2.255
        inet6 fe80::cd87:4bbe:e42d:b1e6  prefixlen 64  scopeid 0x20<link>
        ether 08:00:27:c7:a5:f1  txqueuelen 1000  (Ethernet)
        RX packets 417683  bytes 450530667 (450.5 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 196467  bytes 37332524 (37.3 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 47158  bytes 5197512 (5.1 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 47158  bytes 5197512 (5.1 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0


Using ip command:
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
2: enp0s3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 08:00:27:c7:a5:f1 brd ff:ff:ff:ff:ff:ff
    inet 10.0.2.15/24 brd 10.0.2.255 scope global dynamic noprefixroute enp0s3
       valid_lft 84254sec preferred_lft 84254sec
    inet6 fe80::cd87:4bbe:e42d:b1e6/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever

Using netstat command:
Kernel Interface table
Iface      MTU    RX-OK RX-ERR RX-DRP RX-OVR    TX-OK TX-ERR TX-DRP TX-OVR Flg
enp0s3    1500   417683      0      0 0        196467      0      0      0 BMRU
lo       65536    47158      0      0 0         47158      0      0      0 LRU

Additional details using ethtool:

Interface: enp0s3:
netlink error: no device matches name (offset 24)
netlink error: No such device
netlink error: no device matches name (offset 24)
netlink error: No such device
netlink error: Operation not permitted
netlink error: no device matches name (offset 24)
netlink error: No such device
netlink error: no device matches name (offset 24)
netlink error: No such device
No data available

Interface: lo:
netlink error: no device matches name (offset 24)
netlink error: No such device
netlink error: no device matches name (offset 24)
netlink error: No such device
netlink error: Operation not permitted
netlink error: no device matches name (offset 24)
netlink error: No such device
netlink error: no device matches name (offset 24)
netlink error: No such device
No data available

