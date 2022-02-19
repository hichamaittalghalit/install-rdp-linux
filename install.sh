
#!/bin/bash

sudo apt update -y
apt  install expect -y
sudo apt install xfce4
sudo apt install xfce4-goodies
sudo apt install tightvncserver
vncserver
expect "Password:"
send "$1\r"
expect "Verify:"
send "$1\r"
expect "%"
send "n"
vncserver -kill :1
mv ~/.vnc/xstartup ~/.vnc/xstartup.bak
cp xstartup.txt ~/.vnc/xstartup
sudo chmod +x ~/.vnc/xstartup
sudo apt-get update -y
sudo apt-get install firefox -y
vncserver
