#!/bin/bash -u

vendor_id=$1
prod_id=$2

prev_state="unknown"
state="unknown"

function lock {
  /System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend
}

while true; do
  prev_state=$state
  if $(system_profiler SPUSBDataType | tr '\n' '\t' | egrep "Security Key by Yubico:\\s+Product ID: 0x$prod_id\\s+Vendor ID: 0x$vendor_id" > /dev/null 2>&1); then
    state="attached"
  else
    state="detached"
  fi
  #echo $prev_state, $state
  if [ "$prev_state" = "attached" -a "$state" = "detached" ]; then
    #echo locking
    lock
  fi
  sleep 1
done
