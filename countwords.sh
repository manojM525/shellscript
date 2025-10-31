#!/bin/bash
FILENAME=$1
LL=$(wc -l $FILENAME)
for i in 1..$LL
do
awk 'NR==$i {for(j=1;j<=NF;j++)print $j }' >> output.txt
done
sort output.txt|uniq -c|sort -nr|head -n 5