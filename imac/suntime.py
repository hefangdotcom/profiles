#! /usr/bin/python
import os
import math
import datetime
from datetime import date
import time

def solar_date():
        today = date.today()
        N1 = math.floor(275 * today.month/ 9)
        N2 = math.floor((today.month+ 9) / 12)
        N3 = (1 + math.floor((today.year- 4 * math.floor(today.year/ 4) + 2) / 3))
        N = N1 - (N2 * N3) + today.day- 30
        return N

qd_long=120.3833
qd_lat=36.0667
qd_timezone=8

srt=24*(180+8*15-qd_long-math.acos(-math.tan(-23.4*math.cos(2*math.pi*(solar_date())/365)*math.pi/180)*math.tan(qd_lat*math.pi/180))*180/math.pi)/360

now = datetime.datetime.now()

#wake_time is music time,aler time 
#if now.hour > 12: wake_time=srt+1
#if now.hour < 12: wake_time=srt+16
wake_time=srt+16

wake_min=int((wake_time-int(wake_time))*60)
wake_hour=int(wake_time)

pm_time=wake_time-0.05
pm_min=int((pm_time-int(pm_time))*60)
pm_hour=int(pm_time)

py_time=wake_time+0.01
py_min=int((py_time-int(py_time))*60)
py_hour=int(py_time)

pmdown_time=wake_time+0.1
pmdown_min=int((pmdown_time-int(pmdown_time))*60)
pmdown_hour=int(pmdown_time)

cron= str(py_min)+" "+str(py_hour)+" "+"* * * /var/root//suntime/suntime.py\n"
# play AM PM music respectively, set next play
if now.hour < 12: cron2=str(wake_min)+" "+str(wake_hour)+" "+'* * * open \"/Users/hetianle/prayer.mp3\"\n'
if now.hour > 12: cron2=str(wake_min)+" "+str(wake_hour)+" "+'* * * /var/root/suntime/osas\n'

f1=file("//var/root/suntime/suntime.cron",'w')
f1.write(cron2)
f1.write(cron)
f1.close()

os.system("crontab -r")
os.system("crontab /var/root//suntime/suntime.cron")
os.system("pmset repeat sleep MTWRFSU "+str(pmdown_hour)+":"+str(pmdown_min)+":00 wakeorpoweron MTWRFSU "+str(pm_hour)+":"+str(pm_min)+":00\n")
