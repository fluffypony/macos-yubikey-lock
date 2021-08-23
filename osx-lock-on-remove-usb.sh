#!/bin/bash -u

prev_state="unknown"
state="unknown"

function lock {
  open -a /System/Library/CoreServices/ScreenSaverEngine.app
}

while true; do
  prev_state=$state
  if $(ioreg -p IOUSB -l -w 0 | egrep -i "(YubiKey|Yubico)" > /dev/null 2>&1); then
    state="attached"
  else
    state="detached"
  fi
  echo $prev_state, $state
  if [ "$prev_state" = "attached" -a "$state" = "detached" ]; then
    echo locking
    lock
  fi
  sleep 1
done
