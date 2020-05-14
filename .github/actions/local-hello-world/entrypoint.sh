#!/bin/sh -l

name="$1"
time=$(date)

echo "::debug file=entrypoint.sh,line=4::This was the time set step"

echo "::set-output name=time::$time"

if echo $name | grep -i "^homer" > /dev/null ; then
  echo "No Homers allowed!"
  # Exit with a failure
  exit 1
else
  echo "Hello $name"
fi
