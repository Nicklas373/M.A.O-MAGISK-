#!/system/bin/sh
#

#Mounting Your System
	mount -o remount,rw /system

#Check if speaker enable or not on system
	if [ "`grep persist.audio.dirac.speaker=true /system/vendor/build.prop`" ];
	then
		echo "DIRAC Speaker not written"
	else
		echo "persist.audio.dirac.speaker=true" >> /system/vendor/build.prop
	fi
