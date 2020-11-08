#! /bin/bash
player1=xiaoming
player2=ken
echo "Game start! $player1 $ player2"
cd `dirname $0`; cd ..;
echo "================compile begin==================="
# echo "first: $(readlink -f  ${BASH_SOURCE[0]})"
cd src
files=$(ls $(pwd))
for i in $files
do
    if [ -f $i ];then
        echo "compile file $i";
    else
        echo "compile dir $i";
        ./$i/build.sh
    fi
done
echo "================compile end  ==================="
