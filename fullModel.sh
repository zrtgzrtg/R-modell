#!/bin/bash

set -e

chmod +x getUserInput.sh
chmod +x confirmModel.sh
chmod +x runModel.sh

./getUserInput.sh
./confirmModel.sh
./runModel.sh
