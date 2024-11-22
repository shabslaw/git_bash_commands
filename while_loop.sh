
#!/bin/bash

#While loop Example

counter=1

while [ $counter -le 5 ]
do
	echo "Counter: $counter"
	counter=$(($counter+1))
done



input_file="hosts.txt"

while IFS= read -r host
do
	echo "hostname: $host"
	dig +noall +answer $host
done < "$input_file"
