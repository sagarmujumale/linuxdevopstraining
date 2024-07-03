read -p "Enter the IP address: " IP

nmcli conn down enp0s8
nmcli conn mod enp0s8 ipv4.address $IP/24
nmcli conn mod enp0s8 ipv4.gateway 192.168.56.1
nmcli conn up enp0s8

