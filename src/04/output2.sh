#!/bin/bash

source config
source check.sh

function outputColor()
{
    color $Font1 Font1;
    color $Font2 Font2;
    color $Back_fon1 Back_fon1;
    color $Back_fon2 Back_fon2;

    if [[ $1 == "default" ]]
    then
        column1_background=default
        column1_font_color=default
        column2_background=default
        column2_font_color=default
    fi

    echo "Column 1 background = $column1_background ($Back_fon1)"
    echo "Column 1 font color = $column1_font_color ($Font1)"
    echo "Column 2 background = $column2_background ($Back_fon2)"
    echo "Column 2 font color = $column2_font_color ($Font2)"
}

function color()
{
    if [[ $1 == "$white_font" ]] || [[ $1 == "$white_fon" ]]
    then
    eval "$2='white'"
    elif [[ $1 == "$red_font" ]] || [[ $1 == "$red_fon" ]]
    then
    eval "$2='red'"
    elif [[ $1 == "$green_font" ]] || [[ $1 == "$green_fon" ]]
    then
    eval "$2='green'"
    elif [[ $1 == "$blue_font" ]] || [[ $1 == "$blue_fon" ]]
    then
    eval "$2='blue'"
    elif [[ $1 == "$purple_font" ]] || [[ $1 == "$purple_fon" ]]
    then
    eval "$2='purple'"
    elif [[ $1 == "$black_font" ]] || [[ $1 == "$black_fon" ]]
    then
    eval "$2='black'"
    fi
}
