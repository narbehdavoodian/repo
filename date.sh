#!/bin/bash

echo "###Script started `date`"


for i in {1..10}
do
   echo "Welcome $i times"
   sleep $i
   # @narbehdavoodian please test
done
echo "###Script Finished `date`"
