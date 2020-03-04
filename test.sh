#!/usr/bin/bash


echo Test Sol41
echo ==========
ping sol41 2 > /dev/null 2>&1
if [ $? -eq 0 ]
  then echo "up"
else echo "down"
fi

echo Test Sol42
echo ==========
ping sol42 2 > /dev/null 2>&1
if [ $? -eq 0 ]
  then echo "up"
  exit 0
else echo "down"
fi
