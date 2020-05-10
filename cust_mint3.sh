echo ""
echo "1"
apt clean
echo "2"
rm -r /var/cache/apt/archives/*
echo "3"
rm -r /mydir
echo "4"
rm -rf /tmp/* ~/.bash_history
echo "5"
rm /var/lib/dbus/machine-id
echo "6"
rm /sbin/initctl
echo "7"
dpkg-divert --rename --remove /sbin/initctl
echo "8"
umount /proc || umount -lf /proc
echo "9"
umount /sys
echo "10"
umount /dev/pts
echo "11 & exitwwwwwwwwwwwwww sh #4"
#exit
