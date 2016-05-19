#!/bin/bash -u

vendor_id=$1
prod_id=$2

prev_state="unknown"
state="unknown"

function lock {
  open -a /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app
}

while true; do
  prev_state=$state
  if $(system_profiler SPUSBDataType | tr '\n' '\t' | egrep "Product ID: 0x$prod_id\\s+Vendor ID: 0x$vendor_id" > /dev/null 2>&1); then
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
