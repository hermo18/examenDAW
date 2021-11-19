#!/bin/bash

if [ $# -lt 1 ] || [ $# -gt 3 ];
then
echo 'NO SE ESTÁ UTILIZANDO BIEN EL SCRIPT'
exit 1
fi

if [ $# -eq 1 ] &&  [ $1 = '--help' ];
then
echo './ejercicio2.sh <enable/disable> <dirección_web> <ip>'
exit 0
fi

if [ $# -eq 1 ] && [ $1 = '--cat' ];
then
cat $0
exit 0
fi

if [ $# -eq 1 ] && [ $1 != '--cat' ] && [ $1 != '--help' ];
then
echo 'ERROR'
exit 1
fi

if [ $# -eq 2 ] || [ $# -eq 3 ];
then
	if [ $1 = 'enable' ];
	then
	echo 'ACTIVANDO'
	else
		if [ $1 = 'disable' ];
		then
		echo 'DESACTIVANDO'
		else
		echo 'NO RECONOZCO EL PRIMER PARÁMETO'
		fi
	fi
fi

