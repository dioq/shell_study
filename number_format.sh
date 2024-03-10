#!/bin/bash

for ((i = 1; i <= 10; i++)); do
	var=$(printf "%03d" "$i")
	echo $var
done
