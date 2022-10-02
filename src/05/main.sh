#!/bin/bash

source output.sh

function check()
{
    if [ $# -eq 1 ] #если один параметр
    then if [[ $1 =~ /$ ]] #проверяет на слеш в конце параметра
        then if [[ -d "$1" ]]
            then output "$1"
            else echo "No directory"
            fi
        else echo "There's must directory"
            exit 1
        fi
    else echo "need one parameters (The parameter must end with a '/', for example:
script05.sh /var/log/)"
        exit 1
    fi
}

check "$@"
