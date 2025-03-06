#/bin/bash

path=$(cat ./model_name.txt)

echo -e "Here are the first 10 lines! Is this the right script?\n"
sleep 2

head -n 10 $path

sleep 1

echo -e "\nconfirm with y\n"
read user_input

if [[ "$user_input" != "y" ]]; then
	echo -e "Exiting!!! Restart script with different filename!\n"
	exit 1
fi

sleep 2
clear

echo -e "Proceeding with the file: $path\n"
