#!/bin/sh
cp osx-lock-on-remove-usb.sh /usr/local/bin
chmod +x /usr/local/bin/osx-lock-on-remove-usb.sh
cp osx-lock-on-remove-usb.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/com.nfirvine.osx-lock-on-remove-usb.plist
