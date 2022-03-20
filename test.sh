#!/bin/sh
#filename:test.sh
#function:测试接口
#
#

dos2unix $0

source ./public.sh



########main proc
checkdirnoexistquit ./
checkdirnoexistquit abc
checkfilenoexistquit public.sh
checkfilenoexistquit public2.sh
