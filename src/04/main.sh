#!/bin/bash

#1 - white, 2 - red, 3 - green, 4 - blue, 5 – purple, 6 - black

source check.sh
source output2.sh

white_font="\033[97m"
red_font="\033[1;31m"
green_font="\033[3;32m"
blue_font="\033[34m"
purple_font="\033[35m"
black_font="\033[30m"

white_fon="\033[107m"
red_fon="\033[41m"
green_fon="\033[42m"
blue_fon="\033[44m"
purple_fon="\033[45m"
black_fon="\033[40m"
sheer="\033[0m"

Back_fon1=0;
Font1=0;
Back_fon2=0;
Font2=0;

confCheck "$@"
