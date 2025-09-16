#!/bin/bash

nameScript=$1

if [[ $nameScript != *.sh ]]; then
   nameScript="$nameScript.sh"
fi

vim $nameScript
