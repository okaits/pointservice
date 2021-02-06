#!/bin/bash

int() {
    tmp=$(mktemp)
}
point() {
    pts=$(cat $HOME/PointService-rc1/record/$1/point)
    echo $pts"  "$1 >> $tmp
}
main() {
    echo "Rank  |Pts|Number" > rank
    cat $tmp | sort | tac | nl >> $HOME/PointService-rc1/rank
}

int
point 1
point 2
point 3
point 4
point 5
point 6
point 7
point 8
point 9
point 10
point 11
point 12
point 13
point 14
point 15
point 16
point 17
point 18
point 19
point 20
point 21
point 22
point 23
point 24
point 25
point 26
point 27
point 28
point 29
point 30
point 31
point 32
point 33
point 34
point 35
point 36
main
