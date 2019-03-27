#!/system/bin/sh
#

#Mounting Your System
	mount -o remount,rw /system
	
#Copy modified audio_effects.xml for syberia os only.
#Syberia have JamesDSP on this config but other ROMs isn't, so copy only for preconfigured syberia only.
#Other ROMs not need this config, so prebuilt library isn't needed here.
if [ "`grep ro.product.name=syberia_mido /system/build.prop`" ];
then 
	rm /system/vendor/etc/audio_effects.xml
	cp /propietary/vendor/etc/audio_effects.xml /system/vendor/etc/audio_effects.xml
	chmod 0644 /system/vendor/etc/audio_effects.xml
fi
