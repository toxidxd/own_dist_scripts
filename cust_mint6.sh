echo "4 steps"
echo "0"
cd mylivecd
echo "1"
cd extracted
echo "2"
rm MD5SUMS
echo "3"
find -type f -print0 | sudo xargs -0 md5sum | grep -v isolinux/boot.cat | sudo tee MD5SUMS
echo "4"
mkisofs -D -r -V "$IMAGE_NAME" -cache-inodes -J -l -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -o ../Linux-Mint-cinnamon-x64_custom.iso .
echo "now type exit"

