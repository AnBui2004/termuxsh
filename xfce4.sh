echo You are here! Just a moment...
echo Installing Python
apt install python3 -y
echo Installing Dbus-x11
apt install dbus-x11 -y
echo Installing Pulseaudio
apt install pulseaudio -y
echo Installing Xterm
apt install xterm -y
echo Installing Xfce4
apt install xfce4 -y
echo Installing Tightvncserver
apt install tightvncserver
echo Adding new user [user]
echo Set password and add your info
adduser user
echo Setup Vnc Server
echo Set password
vncserver