#!/bin/sh -eux
if [ $# -lt 2 ]; then
	echo 'usage: install.sh <vendor_id> <product_id>'
fi
vendor_id=$1
product_id=$2
out=com.nfirvine.osx-lock-on-remove-usb-${vendor_id}-${product_id}.plist
cp osx-lock-on-remove-usb.sh /usr/local/bin
chmod +x /usr/local/bin/osx-lock-on-remove-usb.sh
sed -e "s/{{vendor_id}}/$vendor_id/g" -e "s/{{product_id}}/$product_id/g" < com.nfirvine.osx-lock-on-remove-usb.plist.template > $out
cp $out ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/$out
