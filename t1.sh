#!/bin/bash
#
# Read multiple lines at a time.
lwork="0"
lbuff="100"
lfile="cctrx.csv"
lcount="10001"

IFS=$'\n'
while [ $lwork -lt $lcount ]
do
  ltm=$[$lwork+$lbuff]
  echo "Working on lines $lwork to $ltm"
  lsedcommand="sed -n \"$lwork,$ltm"
  lsedcommand+="p\" cctrx.csv"
  # echo $lsedcommand
  lworkarray=($(eval $lsedcommand))
  echo ${#lworkarray[@]}
  # Set work done
  lwork=$[$lwork+$lbuff]
done
unset IFS
