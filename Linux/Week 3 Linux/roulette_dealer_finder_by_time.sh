#!/bin/bash

#bash roulette_dealer_finder_by_time.sh 0310 02 PM

grep $2 $1_Dealer_schedule | grep $3 | awk '{print $1, $2, $5, $6}'

