echo "15 steps"
echo "step 1"
mkdir mylivecd
echo "step 2"
cp -v mint64.iso mylivecd
echo "step 3"
cd mylivecd
echo "step 4"
mkdir mnt
echo "step 5"
sudo mount -o loop mint64.iso mnt
echo "step 6"
mkdir extracted
echo "step 7"
sudo rsync --exclude=/casper/filesystem.squashfs -a mnt/ extracted
echo "step 8"
sudo unsquashfs mnt/casper/filesystem.squashfs
echo "step 9"
sudo mv squashfs-root edit
echo "step 10"
sudo cp /etc/resolv.conf edit/etc/
echo "step 11"
sudo cp /etc/hosts edit/etc/
echo "step 12"
xhost +
echo "step 13"
sudo mount --bind /dev/ edit/dev
echo "step 14"
sudo cp ../cust_mint2.sh ./edit/
sudo cp ../cust_mint3.sh ./edit/
echo "step 15"
echo "now sh cust_mint2.sh"
sudo chroot edit




