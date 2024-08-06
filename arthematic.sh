#!/bin/bash

read -p "provide value for a:" a
read -p "provide value for b:" b
sum=`expr $a - $b`
echo $sum