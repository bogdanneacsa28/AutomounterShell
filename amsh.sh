#!/bin/bash
x="amsh> "
echo -n "$x"
read input

while [ "$input" != "exit" -a "$input" != "bye" ]; do
	eval "$input"
	
	echo -n "$x"
	read input
done
