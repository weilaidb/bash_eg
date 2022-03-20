#!/bin/sh
#filename:public.sh
#function:提供给各脚本公共接口
#
#
set -e 

dos2unix $0

function checkdirnoexistquit()
{
DIRPATH=$1
	if [ ! -d $DIRPATH ];then
		echo "dir [$DIRPATH] no exist!!!"
		exit 1
	fi
}


function checkfilenoexistquit()
{
FILEPATH=$1
	if [ ! -f $FILEPATH ];then
		echo "file [$FILEPATH] no exist!!!"
		exit 1
	fi
}





























































































