#!/bin/sh -eux

rm -f /usr/local/bin/osx-lock-on-remove-usb.sh
cp osx-lock-on-remove-usb.sh /usr/local/bin
chmod +x /usr/local/bin/osx-lock-on-remove-usb.sh
rm -f ~/Library/LaunchAgents/com.fluffypony.osx-lock-on-remove-usb.plist
cp com.fluffypony.osx-lock-on-remove-usb.plist ~/Library/LaunchAgents
launchctl unload ~/Library/LaunchAgents/com.fluffypony.osx-lock-on-remove-usb.plist
launchctl load ~/Library/LaunchAgents/com.fluffypony.osx-lock-on-remove-usb.plist
