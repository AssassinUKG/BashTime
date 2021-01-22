#!/bin/bash

#IP Chooser based on Ip hostname (ip a)

HOSTNAME="hostname -I"
#HOSTNAME=("1.1.1.1" "5.5.5.5" "10.10.10.10" "quit")
HOSTNAME=$(eval $HOSTNAME)
#echo "Hastnames: ${HOSTNAME[@]}"

OPTIONS=${HOSTNAME[@]}
PS3="Select an IP: "
SELECTEDIP=""
# IP Selection function (Menu) 
select opt in ${OPTIONS[@]} quit; do    
        if [[ -n "$opt" ]]; then
                if [[ $opt == "quit" ]]; then
                        echo "Quitting application..."
                        exit
                fi
                SELECTEDIP=$opt;break;
        else
                echo "Wrong Selection, Try again"
        fi
done

printf "Selected IP: %s" $SELECTEDIP








