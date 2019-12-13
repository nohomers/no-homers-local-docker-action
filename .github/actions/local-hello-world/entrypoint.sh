#!/bin/sh -l

name="$1"
time=$(date)

echo ::set-output name=time::$time

echo "The Simpson's house address is: " $home_address

if echo $name | grep -i "^homer" > /dev/null ; then
  echo "No Homers allowed!"
  # Exit with a failure
  exit 1
else
  echo "Hello $name"
fi

