echo "8 steps"
echo "step 1"
mount -t proc none /proc
echo "step 2"
mount -t sysfs none /sys
echo "step 3"
mount -t devpts none /dev/pts
echo "step 4"
export HOME=/root
echo "step 5"
export LC_ALL=C
echo "step 6"
dbus-uuidgen > /var/lib/dbus/machine-id
echo "step 7"
dpkg-divert --local --rename --add /sbin/initctl
echo "step 8"
ln -s /bin/true /sbin/initctl
echo "now install your soft and costomize dist and use sh cust_mint3.sh"
