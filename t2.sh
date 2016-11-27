#!/bin/bash
#
# Read multiple lines at a time and distribute in parallel to subprocesses.
lwork="0"
lbuff="100"
lfile="cctrx.csv"
lcount="10001"
lconcurrent="20"
lworkers=("fs1:0" "fs2:0" "fs3:0" "fs4:0")

while true;
do
  for i in "${lworkers[@]}"
  do
    #lcom="echo ${i}"
    read server count << eval "echo '${i}' | awk -F':' '{print \$1 \" \" \$2}'"
  done
  break
done
