#!/bin/bash
# /home/pi/PointService/rec.sh (P:$HOME/PointService/rec.sh) (R:record) (B:False(none)) (S:SEND, int)

read -p "Password: " pw
if [ $pw = School2020 ]
    then
    echo "Confirmed."
    else
    echo "NO."
    exit 1
fi
cd $HOME/PointService-rc1/record/$SEND
read -p "Loss Point: " lpts
tmp=$((${lpts}-1))
lpts=$tmp
oldpts=$(cat point)
cpts=$((${oldpts}-${lpts}))
echo $cpts > point
echo $(date)": -"$lpts"("$cpts"): Successfull(Changed)" >> log.log
cd ~/PointService-rc1
rm rank
$HOME/PointService-rc1/rank.sh
exit
