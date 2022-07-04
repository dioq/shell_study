
path=""
sum=0

readDir() {
	path=$1
	sum=100
}

readDir "/var/tmp"

echo "path = ${path}"
echo "sum = ${sum}"
