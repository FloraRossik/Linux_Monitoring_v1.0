#!/bin/bash
source Direct.sh
source File.sh
source Exe.sh

function output()
{
    time=$(date +%s)
    direct=$(find "$1" -type d |wc -l)
    echo "Total number of folders (including all nested ones) = $(($dir-1))"
    echo "TOP 5 folders of maximum size arranged in descending order (path and size):"; Direct "$1"
    echo Total number of files = "$(find "$1" -type f|wc -l)"

    echo Number of:  
    echo "Configuration files (with the .conf extension) = $(find "$1" -name "*.conf" | wc -l)"
    echo "Text files = $(find "$1" -name "*.txt" | wc -l)"
    echo "Executable files = $(find "$1" -type f -executable | wc -l)"
    echo "Log files (with the extension .log) = $(find "$1" -name "*.log" | wc -l)"
    echo "Archive files = $(find "$1" -name "*.tar"| wc -l)"
    echo "Symolic links = $(find "$1" -type l | wc -l)"

    echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"; File "$1"
    echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file):"; Exe "$1"

    echo "Script execution time (in seconds) = $(($(date +%s)-$time))"
}
