#!/bin/bash

function check()
{
    if [[ $# = 4 ]]
    then error=0;
        for i in "$@"
        do
            if [[ i -lt 1 ]] || [[ i -gt 6 ]]
            then error=1;
            echo "The script is run with 4 parameters. The parameters are numeric. 1 to 6" 
            exit 1
            fi
        done
        if [[ $error = 0 ]]
        then check_color "$@"
        else
            echo "The script is run with 4 parameters. The parameters are numeric. 1 to 6" 
            exit 1
        fi
    else echo "The script is run with 4 parameters. The parameters are numeric. 1 to 6" 
        exit 1
    fi
}


function check_color()
{
    if [[ $1 = "$2" ]] || [[ $3 = "$4" ]]
    then echo "The background should not be equal to the font"
        exit 1
    else
        setBG "$1" Back_fon1
        setBG "$3" Back_fon2
        setF "$2" Font1
        setF "$4" Font2
        output
    fi
}
