#!/bin/sh
cp osx-lock-on-remove-yubikey.sh /usr/local/bin
chmod +x /usr/local/bin/osx-lock-on-remove-yubikey.sh
cp osx-lock-on-remove-yubikey.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/com.nfirvine.osx-lock-on-remove-yubikey.plist
