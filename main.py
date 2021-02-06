#!/usr/bin/python3
import envsetup as point
import time
import os
import sys

### Start Init Proccess ###
print("PointService RC.1 Ver.1 Rev.rpi3-raspad0")

### Main Proccess ###
num = point.asknumber()
if not point.numbervalidcheck(num) == True:
    time.sleep(10)
    exit()
point.record(num)
