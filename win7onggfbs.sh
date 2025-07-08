clear
echo "The owner of this script will not be responsible if any unexpected problems occur whether you edit this script or not. It will start in 10 seconds and you agree to this. To cancel press Ctrl + C."
sleep 10
clear
sudo apt update -y
sudo apt install apache2 p7zip-full qemu-kvm aria2 -y
if [ -e "./W7.qcow2" ]; then
    echo "File exists"
else
    aria2c -x 4 -o file.7z 'https://archive.org/download/windows-7.7z_202409/Windows%207.7z'
    7za x file.7z
    rm -rf file.7z
fi
clear
echo "qemu-system-x86_64 -usb -device usb-tablet -device usb-kbd -cpu core2duo,+avx -smp sockets=1,cores=4,threads=1 -m 1024M -overcommit mem-lock=off -drive file=/storage/emulated/0/VM/W7.qcow2,aio=threads,cache=unsafe -vga std -device intel-hda -device hda-duplex -device e1000,netdev=n0 -netdev user,id=n0 -accel kvm" > run7.sh
chmod +rwx run7.sh
echo "To run, run the following command:"
echo "----------\/----------"
echo "./run7.sh"
echo "----------/\----------"
./run7.sh
clear
echo "To run again, run the following command:"
echo "----------\/----------"
echo "./run7.sh"
echo "----------/\----------"