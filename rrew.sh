#!/bin/bash

#CLEAN SYSTEM 
sudo rm -rf ~/.cache/*
sudo pacman -Scc --noconfirm
sudo rm -r /home/$USER/.mozilla
sudo rm -rf /tmp/*

#VPN DROP 
# sudo iptables -A OUTPUT -o wlan0 -m state --state RELATED,ESTABLISHED -j ACCEPT
# sudo iptables -A OUTPUT -o wlan0 -j DROP
# sudo iptables -A OUTPUT -o enp2s0 -m state --state RELATED,ESTABLISHED -j ACCEPT
# sudo iptables -A OUTPUT -o enp2s0 -j DROP

# IPV6 DISABLE
sudo sysctl -w net.ipv6.conf.all.disable_ipv6=1
sudo sysctl -w net.ipv6.conf.default.disable_ipv6=1

#CHECK PORT
# nmap -sV -p 1-65535 localhost > nmap.log

#CHECK SERVICES 
sudo systemctl list-units > services.log

echo "RREW - Clean the system / Protect the system!"
