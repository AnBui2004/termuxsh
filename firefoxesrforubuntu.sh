clear
echo "The owner of this script will not be responsible if any unexpected problems occur whether you edit this script or not. It will start in 10 seconds and you agree to this. To cancel press Ctrl + C."
sleep 10
clear
echo Welcome!
echo You are in! Just a moment...
echo Installing Software Properties Common...
apt install software-properties-common -y
echo Adding repository...
add-apt-repository ppa:mozillateam
echo Installing Firefox...
apt install firefox-esr
echo You are done!