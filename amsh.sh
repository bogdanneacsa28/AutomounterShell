#!/bin/bash
path=$(pwd)
x="amsh:$path> "
echo -n "$x"
read input

while [ "$input" != "exit" -a "$input" != "bye" ]; do
	eval "$input" 
	command=$(echo $input | cut -d " " -f 1)
    if [ "$command" = "cd" ]; then
        path=$(pwd)
        x="amsh:$path> "
        echo -n "$x"
    else
        echo -n "$x"
    fi
	read input
done
