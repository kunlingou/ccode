#!/bin/sh
cd `dirname $0`;
echo "=========build beg========="
ls
echo "**********clear**********"
rm -rf *.o
ls
echo "**********build**********"
files=$(ls $(pwd))
for i1 in $files
do
    if [ "${i1##*.}"x = "c"x ]||[ "${i1##*.}"x = "h"x ];then
        echo "compile $i1"
        gcc -Wall -g -o $i1.o ./$i1
    fi
done
ls
echo "=========build end========="
echo "=========test beg========="
for i1 in $(ls $(pwd))
do
    if [ "${i1##*.}"x = "o"x ];then
        echo "test $i1 ..."
        ./$i1
    fi
done
echo "=========test end========="
cd ..