#! /bin/bash
player1=xiaoming
player2=ken
echo "Game start! $player1 $ player2"
echo "================compile start==================="
releaseRootPath=/usr1/ccode/output/release
testRootPath=/usr1/ccode/test
files=$(ls $testRootPath/code/gdb/register)
for filename in $files
do
    if [ "${filename##*.}"x = "c"x ]||[ "${filename##*.}"x = "h"x ];then
        echo "compile $filename"
        gcc -o $releaseRootPath/$filename.o $testRootPath/code/gdb/register/$filename
    fi
done
echo "================compile end  ==================="
