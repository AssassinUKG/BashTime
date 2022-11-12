#!/bin/bash

#IP Chooser based on Ip hostname (hostname -I)

# HOSTNAME="hostname -I"
# #HOSTNAME=("1.1.1.1" "5.5.5.5" "10.10.10.10" "quit")
# HOSTNAME=$(eval $HOSTNAME)
#echo "Hastnames: ${HOSTNAME[@]}"


install_apps() {
         echo "test 1"
}

install_bugTools() {

        TOOLS+=('nmap' 'go')
        apt install $TOOLS
}


while true; do
        options=("install apps" "install bugtools" "quit")

        echo "Choose an option:"
        select opt in "${options[@]}"; do
                case $REPLY in
                        1) install_apps; break;;
                        2) install_bugTools; break;;
                        3) exit; ;;
                        *) echo "Wrong option, try again" >&2;sleep 1;clear; break;;
                esac

        done
        echo "Reply: $REPLY"
        # echo "Are we done?"
        # select opt in "Yes" "No"; do
        #         case $REPLY in
        #         1) break 2 ;;
        #         2) break ;;
        #         *) echo "Look, it's a simple question..." >&2
        #         esac
        # done
done
