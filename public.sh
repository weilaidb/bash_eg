#!/bin/sh
#filename:public.sh
#function:提供给各脚本公共接口
#
#
set -e 

dos2unix $0 >/dev/null 2>&1



###########函数名称
usage(){
    echo "Usage:$1"
    exit 1
}

lsinfo()
{
LSPATH=$1
echo "====>show lsinfo for [$LSPATH] begin"
echo "--->format man:"
ls -lh $LSPATH
echo "--->format size:"
ls -la $LSPATH
echo "--->format time:"
ls -lt $LSPATH
echo "====>show lsinfo for [$LSPATH] end"
echo
echo
}

checkdirnoexistquit()
{
DIRPATH=$1
        if [ ! -d $DIRPATH ];then
                echo "dir [$DIRPATH] no exist!!!"
                exit 1
        fi
}

checkfilenoexistquit()
{
FILEPATH=$1
        if [ ! -f $FILEPATH ];then
                echo "file [$FILEPATH] no exist!!!"
                exit 1
        fi
}
##查找所有
findlistall()
{
[ $# -lt 1 ] && usage "need 1 para"
DIRPATH=$1
checkdirnoexistquit $DIRPATH
cd $DIRPATH && find > findlist.all
}
#查找并忽略一些内容
findlistignore()
{
[ $# -lt 2 ] && usage "need 1 para"
DIRPATH=$1
IGNOREPATTERN="$2"
checkdirnoexistquit $DIRPATH
cd $DIRPATH && find | grep -v $IGNOREPATTERN > findlist.ignore
}
#查找并寻找所要的
findlistuse()
{
[ $# -lt 2 ] && usage "need 1 para"
DIRPATH=$1
FINDPATTERN="$2"
checkdirnoexistquit $DIRPATH
cd $DIRPATH && find | grep  $FINDPATTERN > findlist.grep
}



