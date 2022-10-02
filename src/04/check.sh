#!/bin/bash
source config
source ./../03/check.sh
source ./../03/set.sh
source ./../03/output.sh

function confCheck()
{
    if [[ $# -eq 0 ]]
    then
        Back_fon1=$column1_background
        Back_fon2=$column2_background
        Font1=$column1_font_color
        Font2=$column2_font_color

        if [[ -z $Back_fon1 ]] || [[ -z $Back_fon2 ]] || [[ -z $Font1 ]] || [[ -z $Font2 ]]
        then
            Back_fon1=1; Back_fon2=2; Font1=3; Font2=6;

            check_color $Back_fon1 $Font1 $Back_fon2 $Font2
            echo ""
            outputColor default
        else
            check $Back_fon1 $Font1 $Back_fon2 $Font2
            echo ""
            outputColor
        fi
    else
        echo "Should not have parameters"
        exit 1
    fi
}
