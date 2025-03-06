#!/bin/bash

path=$(cat ./model_name.txt)

echo "starting model!!! $path\n"

sleep 2

Rscript $path

echo "done!!!"
