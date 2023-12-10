2.  Create a script to delete a firewall rule for a specific port number. The script should take the port number as an input.



#!/bin/bash

# Check if a port number is provided as a command-line argument
if [ -z "$1" ]; then
    echo "Usage: $0 <port_number>"
    exit 1
fi

port_to_delete="$1"

echo "Deleting firewall rule for port $port_to_delete"

# Delete iptables rule for the specified port
iptables -D INPUT -p tcp --dport $port_to_delete -j ACCEPT

# Save the iptables rules
service iptables save

echo "Firewall rule for port $port_to_delete deleted."



OUTPUT : Usage: ./task2.sh <port_number>

