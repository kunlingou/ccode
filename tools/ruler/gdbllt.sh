#! /bin/bash
# filename %~1
player1=xiaoming
player2=ken
echo "Game start! $player1 $player2"
echo "================llt start==================="
releaseRootPath=/usr1/ccode/output/release
files=$(ls $releaseRootPath)
for filename in $files
do
    if [ "${filename##*.}"x = "o"x ]||[ "${filename##*.}"x = "o"x ];then
        echo "llt $filename"
        gdb $releaseRootPath/$filename
    fi
done
echo "================llt end  ==================="
