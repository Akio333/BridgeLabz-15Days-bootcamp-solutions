#!/bin/bash
isHead=1
flip=$(( $RANDOM % 2 ))

if [ $flip -eq $isHead ]
then
  echo "You have Heads"
else
  echo "You have Tails"
fi


