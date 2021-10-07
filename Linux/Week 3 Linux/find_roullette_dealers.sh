#!/bin/bash

grep -i $2 $1* | awk '{print $5" "$6}' 
