# macOS Lock-on-YubiKey

Lock the screen on macOS when your YubiKey is removed

Copyright Riccardo Spagni, 2021
Copyright Erik Inge Bolsø, 2020
Original copyright Nick Irvine, 2015-2016

## Installation

	./install.sh

## Advanced

This polls ```ioreg -p IOUSB -l -w 0```, which is MUCH MUCH faster than polling system_profiler. If you use something other than a YubiKey, just find something unique (eg. the ID that comes after the ```class AppleUSBDevice``` for it) and replace the egrep in ```osx-lock-on-remove-usb.sh```.
