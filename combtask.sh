7. Create an all-in-one network management script that performs various operations like managing firewall rules, checking network interfaces, and scanning ports. 


#!/bin/bash

# Function to display menu
display_menu() {
    echo "Network Management Script"
    echo "1. Manage Firewall Rules"
    echo "2. Check Network Interfaces"
    echo "3. Scan Ports on a Remote Server"
    echo "4. Exit"
}

# Function to manage firewall rules
manage_firewall() {
    echo "Firewall Management Menu"
    echo "1. Allow Traffic through a Port"
    echo "2. Delete Firewall Rule for a Port"
    echo "3. Back to Main Menu"

    read -p "Enter your choice: " firewall_choice

    case $firewall_choice in
        1)
            read -p "Enter the port to allow traffic: " port_to_allow
            iptables -A INPUT -p tcp --dport $port_to_allow -j ACCEPT
            service iptables save
            echo "Traffic through port $port_to_allow allowed."
            ;;
        2)
            read -p "Enter the port to delete firewall rule: " port_to_delete
            iptables -D INPUT -p tcp --dport $port_to_delete -j ACCEPT
            service iptables save
            echo "Firewall rule for port $port_to_delete deleted."
            ;;
        3)
            return
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac
}

# Function to check network interfaces
check_interfaces() {
    echo "Checking Network Interfaces"
    ifconfig -a
}

# Function to scan ports on a remote server
scan_ports() {
    read -p "Enter the remote server IP address or hostname: " remote_server
    echo "Scanning ports on $remote_server"
    
    for port in {1..1024}; do
        timeout 1 nc -zvw1 "$remote_server" "$port" &>/dev/null
        if [ $? -eq 0 ]; then
            echo "Port $port is open"
        fi
    done

    echo "Port scan completed."
}

# Main menu
while true; do
    display_menu

    read -p "Enter your choice: " main_choice

    case $main_choice in
        1)
            manage_firewall
            ;;
        2)
            check_interfaces
            ;;
        3)
            scan_ports
            ;;
        4)
            echo "Exiting. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac

    read -p "Press Enter to continue..."
done




OUTPUT :  Network Management Script
1. Manage Firewall Rules
2. Check Network Interfaces
3. Scan Ports on a Remote Server
4. Exit
Enter your choice: 1
Firewall Management Menu
1. Allow Traffic through a Port
2. Delete Firewall Rule for a Port
3. Back to Main Menu
Enter your choice: 2
Enter the port to delete firewall rule: 3
iptables v1.8.7 (nf_tables): unknown option "--dport"
Try `iptables -h' or 'iptables --help' for more information.
iptables: unrecognized service
Firewall rule for port 3 deleted.
Press Enter to continue...4
Network Management Script
1. Manage Firewall Rules
2. Check Network Interfaces
3. Scan Ports on a Remote Server
4. Exit
Enter your choice: 



