#!/bin/bash

set -e

DIR=$(mktemp -d)

$CHISELD -d "sqlite://$DIR/chiseld.db?mode=rwc" -m "sqlite://$DIR/chiseld-data.db?mode=rwc" &
PID=$!

function cleanup() {
    kill $PID
    wait
    rm -rf "$DIR"
}

trap cleanup EXIT

sleep 1

for i in {1..5}; do
  $CHISEL status
  if [ $? -eq 0 ]; then
    break
  fi
  sleep $i
done

set +e
sh -c "$2"
ret=$?
set -e

exit $ret
