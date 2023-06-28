#!/bin/bash

path="/var/test"
sum=0

echo "path = ${path}"

readDir() {
	path=$1
	sum=100
}

readDir "/var/tmp"

echo "path = ${path}"
echo "sum = ${sum}"
