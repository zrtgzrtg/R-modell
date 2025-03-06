#/bin/bash

echo "Give model name!"
read user_input

echo ./model/$user_input > model_name.txt

echo "Finished!"