# osx-lock-on-remove-usb

Lock the screen on OS X when your YubiKey is removed

# Installation

	./install.sh

# Advanced

This polls ```ioreg -p IOUSB -l -w 0```, which is MUCH MUCH faster than polling system_profiler. If you use something other than a YubiKey, just find something unique (eg. the ID that comes after the ```class AppleUSBDevice``` for it) and replace the egrep in ```osx-lock-on-remove-usb.sh```.
