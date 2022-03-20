#!/bin/sh
#filename:test.sh
#function:测试接口
#
#

dos2unix $0 >/dev/null 2>&1

source ./public.sh



########main proc
# 显示帮助
[ $# -lt 0 ] && usage "./eg.sh "
#[ $# -lt 1 ] && usage "./eg.sh RootPath"
checkdirnoexistquit ./
checkdirnoexistquit abc
checkfilenoexistquit public.sh
checkfilenoexistquit test.sh
#checkfilenoexistquit test1.sh

lsinfo .
#lsinfo ..
#lsinfo ~


findlistall .
findlistignore . ".git\|.sh$"
findlistuse . .git

