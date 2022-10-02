#!/bin/bash

function output()
{
    echo -e "${Back_fon1}${Font1} HOSTNAME${sheer} = ${Back_fon2}${Font2}$(hostname)${sheer}"
    echo -e "${Back_fon1}${Font1} TIMEZONE${sheer} = ${Back_fon2}${Font2}$(< /etc/timezone)${sheer}"
    echo -e "${Back_fon1}${Font1} USER${sheer} = ${Back_fon2}${Font2}$USER${sheer}"
    echo -e "${Back_fon1}${Font1} OS${sheer} = ${Back_fon2}${Font2}$(uname) $(< /etc/issue.net)${sheer}"
    echo -e "${Back_fon1}${Font1} DATE${sheer} = ${Back_fon2}${Font2}$(date +"%d %B %Y %T")${sheer}"
    echo -e "${Back_fon1}${Font1} UPTIME${sheer} = ${Back_fon2}${Font2}$(uptime -p)${sheer}"
    echo -e "${Back_fon1}${Font1} UPTIME_SEC${sheer} = ${Back_fon2}${Font2}$(cat /proc/uptime | awk '{print $1}')${sheer}"
    echo -e "${Back_fon1}${Font1} IP${sheer} = ${Back_fon2}${Font2}$(hostname -i | awk '{print $1}')${sheer}"
    echo -e "${Back_fon1}${Font1} MASK${sheer} = ${Back_fon2}${Font2}$( ifconfig | grep -m2 'inet '| awk '{ if (NR==2) print $4}' )${sheer}"
    echo -e "${Back_fon1}${Font1} GATEWAY${sheer} = ${Back_fon2}${Font2}$(ip r | awk '/default/{print$3}')${sheer}"
    echo -e "${Back_fon1}${Font1} RAM_TOTAL${sheer} = ${Back_fon2}${Font2}$( free -m | awk 'sub(/Mem:/,""){printf("%.3f\n",$1 / 1024) }' ) Gb${sheer}"
    echo -e "${Back_fon1}${Font1} RAM_USED${sheer} = ${Back_fon2}${Font2}$( free -m | awk 'sub(/Mem:/,""){printf("%.3f\n",$2 / 1024) }' ) Gb${sheer}"
    echo -e "${Back_fon1}${Font1} RAM_FREE${sheer} = ${Back_fon2}${Font2}$( free -m | awk 'sub(/Mem:/,""){printf("%.3f\n",$3 / 1024) }' ) Gb${sheer}"
    echo -e "${Back_fon1}${Font1} SPACE_ROOT${sheer} = ${Back_fon2}${Font2}$( df -hk / | awk 'sub(/dev/,""){printf("%.2f\n",$2 / 1024) }' ) Mb${sheer}"
    echo -e "${Back_fon1}${Font1} SPACE_ROOT_USED${sheer} = ${Back_fon2}${Font2}$( df -hk / | awk 'sub(/dev/,""){printf("%.2f\n",$3 / 1024) }' ) Mb${sheer}"
    echo -e "${Back_fon1}${Font1} SPACE_ROOT_FREE${sheer} = ${Back_fon2}${Font2}$( df -hk / | awk 'sub(/dev/,""){printf("%.2f\n",$4 / 1024) }' ) Mb${sheer}"
}