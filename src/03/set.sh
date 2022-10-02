#!/bin/bash

function setBG()
{
    if [[ $1 -eq 1 ]]
    then
        eval "$2='$white_fon'"
    elif [[ $1 -eq 2 ]]
    then
        eval "$2='$red_fon'"
    elif [[ $1 -eq 3 ]]
    then
        eval "$2='$green_fon'"
    elif [[ $1 -eq 4 ]]
    then
        eval "$2='$blue_fon'"
    elif [[ $1 -eq 5 ]]
    then
        eval "$2='$purple_fon'"
    elif [[ $1 -eq 6 ]]
    then
        eval "$2='$black_fon'"
    fi
}

function setF()
{
    if [[ $1 -eq 1 ]]
    then
        eval "$2='$white_font'"
    elif [[ $1 -eq 2 ]]
    then
        eval "$2='$red_font'"
    elif [[ $1 -eq 3 ]]
    then
        eval "$2='$green_font'"
    elif [[ $1 -eq 4 ]]
    then
        eval "$2='$blue_font'"
    elif [[ $1 -eq 5 ]]
    then
        eval "$2='$purple_font'"
    elif [[ $1 -eq 6 ]]
    then
        eval "$2='$black_font'"
    fi
}
