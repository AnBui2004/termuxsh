clear
echo "The owner of this script will not be responsible if any unexpected problems occur whether you edit this script or not. It will start in 10 seconds and you agree to this. To cancel press Ctrl + C."
sleep 10
clear
sudo apt update -y
sudo apt install apache2 p7zip-full qemu-kvm -y
if [ -e "./XP.qcow2" ]; then
    echo "File exists"
else
    wget -O file.7z 'https://archive.org/download/windows-xp.-7z_202408/Windows%20XP.7z'
    7za x file.7z
    rm -rf file.7z
fi
clear
echo "qemu-system-x86_64 -cpu core2duo,+avx -usb -device usb-kbd -device usb-tablet -smp sockets=1,cores=4,threads=1 -m 1G -hda XP.qcow2 -vga vmware -device ac97 -device e1000,netdev=n0 -netdev user,id=n0 -accel kvm" > runxp.sh
chmod +rwx runxp.sh
echo "To run, run the following command:"
echo "----------\/----------"
echo "./runxp.sh"
echo "----------/\----------"
./runxp.sh
clear
echo "To run again, run the following command:"
echo "----------\/----------"
echo "./runxp.sh"
echo "----------/\----------"