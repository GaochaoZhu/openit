#!/bin/sh
#python 3.x
#pwd /home/$USER/clashcheck
#with log ↓          #no log ↓ 
#nohup ./start.sh &  #nohup ./start.sh > /dev/null 2>&1 &
#TODO start apache if exist & start clashcheck with while if no false

apachectl start || true
while [ $? -eq 0 ]; do python main.py; done
