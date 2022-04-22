#!/bin/sh -eux

brew -v
cp osx-lock-on-remove-usb.sh "$(brew --prefix)"/bin
chmod +x "$(brew --prefix)"/bin/osx-lock-on-remove-usb.sh
cp -v com.fluffypony.osx-lock-on-remove-usb.plist ~/Library/LaunchAgents/
launchctl load ~/Library/LaunchAgents/com.fluffypony.osx-lock-on-remove-usb.plist
