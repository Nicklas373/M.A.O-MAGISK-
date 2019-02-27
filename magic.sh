#!/system/bin/sh
#

#Mounting Your System
	mount -o remount,rw /system
	
#Copy modified audio_effects.xml for syberia os only 
#Syberia have updated this config but other ROMs not, so copy only for preconfigured syberia only
#Will check other ROM later.
if [ "`grep ro.product.name=syberia_mido /system/build.prop`" ];
then 
    rm /system/vendor/etc/audio_effects.xml
	cp /system/vendor/etc/syberia_audio_effects.xml /system/vendor/etc/audio_effects.xml
	chmod 0644 /system/vendor/etc/audio_effects.xml
	rm /system/vendor/etc/syberia_audio_effects.xml
else
	rm /system/vendor/etc/audio_effects.xml
	cp /system/vendor/etc/default_audio_effects.xml /system/vendor/etc/audio_effects.xml
	chmod 0644 /system/vendor/etc/audio_effects.xml
	rm /system/vendor/etc/default_audio_effects.xml
fi
