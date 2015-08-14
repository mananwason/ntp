#!/bin/bash
sudo service ntp start
echo "server started at IP $(ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/')" 
