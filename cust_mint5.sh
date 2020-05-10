echo "8 steps"
echo "1"
chmod +w extracted/casper/filesystem.manifest
echo "2"
chroot edit dpkg-query -W --showformat='${Package} ${Version}\n' > extracted/casper/filesystem.manifest
echo "3"
cp extracted/casper/filesystem.manifest extracted/casper/filesystem.manifest-desktop
echo "4"
sed -i '/ubiquity/d' extracted/casper/filesystem.manifest-desktop
echo "5"
sed -i '/casper/d' extracted/casper/filesystem.manifest-desktop
echo "6"
rm extracted/casper/filesystem.squashfs
echo "7"
mksquashfs edit extracted/casper/filesystem.squashfs -comp xz
echo "8"
printf $(sudo du -sx --block-size=1 edit | cut -f1) > extracted/casper/filesystem.size
echo "open extracted/README.diskdefines file with a text editor and change the name of the disk! and ../#6."
pause


