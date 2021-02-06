#!/usr/bin/python3

### Start Config ###

global os
global sys
global time

import os
import sys
import time

def loadingmessage(num):
    print("loading...")
    time.sleep(num)

def asknumber():
    num = str(input("Number: "))
    if not num.isdigit() == True:
        print("Not number.")
        return False
    elif num.isdigit() == True:
        print("Valid.")
        return num

def numbervalidcheck(num):
    loadingmessage(0.1)
    if int(num) < int(37):
        print("Valid.")
        return True
    else:
        print("Not valid.")
        return False

def record(num): # Need: /home/pi/PointService-rc1/rec.sh (P:$HOME/PointService/rec.sh) (R: record) (B: False(none))
    loadingmessage(0.1)
    os.environ["SEND"] = num
    os.system("/bin/bash -c " + os.environ["HOME"] + "/PointService-rc1/rec.sh")

def recordvoice():
   loadingmessage(5)
   print("Disabled.")

### End Config ###
