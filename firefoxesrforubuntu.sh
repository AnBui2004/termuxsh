echo Welcome!
echo You are in! Just a moment...
echo Installing Software Properties Common...
apt install software-properties-common -y
echo Adding repository...
add-apt-repository ppa:mozillateam
echo Installing Firefox...
apt install firefox-esr
echo You are done!