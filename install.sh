
#!/bin/bash

sudo apt update -y
apt  install expect -y
sudo apt install xfce4 xfce4-goodies -y
sudo apt install tightvncserver -y
vncserver
vncserver -kill :1
mv ~/.vnc/xstartup ~/.vnc/xstartup.bak
cp xstartup.txt ~/.vnc/xstartup
sudo chmod +x ~/.vnc/xstartup
sudo apt-get update -y
sudo apt-get install firefox -y
vncserver
