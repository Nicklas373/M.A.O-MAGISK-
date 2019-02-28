#!/system/bin/sh
#

#Mounting Your System
	mount -o remount,rw /system

#Remove DIRAC Audio Effetcs From System
if [ "`grep ro.product.name=xenonhd_mido /system/build.prop`" ];
then 
	echo "DIRAC NOT REMOVED"
	echo "But changed to revision V10.2.3.0.NCFMIXM"
	rm /system/lib/libDiracAPI_SHARED.so
	rm /system/lib/soundfx/libdirac.so
	rm /system/vendor/etc/diracmobile.config
	cp /temp/propietary/lib/libDiracAPI_SHARED.so /system/lib/libDiracAPI_SHARED.so
	cp /temp/propietary/lib/soundfx/libdirac.so /system/lib/soundfx/libdirac.so
	cp /temp/propietary/vendor/etc/diracmobile.config /system/vendor/etc/diracmobile.config
	chmod 0644 /system/lib/libDiracAPI_SHARED.so
	chmod 0644 /system/lib/soundfx/libdirac.so
	chmod 0644 /system/vendor/etc/diracmobile.config
	if [ "`grep persist.audio.dirac.speaker=true /system/vendor/build.prop`" ];
	then
		echo "DIRAC Speaker not written"
	else
		echo "persist.audio.dirac.speaker=true" >> /system/vendor/build.prop
	fi
else
	rm /system/lib/soundfx/libdirac.so
	rm /system/lib/libDiracAPI_SHARED.so
	rm /system/vendor/etc/diracmobile.config
	sed -i '/persist.audio.dirac.speaker=true/d' /vendor/build.prop
fi
	
#Copy modified audio_effects.xml for syberia os only 
#Syberia have updated this config but other ROMs not, so copy only for preconfigured syberia only
#Will check other ROM later.
if [ "`grep ro.product.name=syberia_mido /system/build.prop`" ];
then 
    rm /system/vendor/etc/audio_effects.xml
	cp /system/vendor/etc/syberia_audio_effects.xml /system/vendor/etc/audio_effects.xml
	chmod 0644 /system/vendor/etc/audio_effects.xml
	rm /system/vendor/etc/syberia_audio_effects.xml
fi
if [ "`grep ro.product.name=xenonhd_mido /system/build.prop`" ];
then 
	rm /system/vendor/etc/audio_effects.xml
	cp /system/vendor/etc/xenon_audio_effects.xml /system/vendor/etc/audio_effects.xml
	chmod 0644 /system/vendor/etc/audio_effects.xml
	rm /system/vendor/etc/default_audio_effects.xml
else
	rm /system/vendor/etc/audio_effects.xml
	cp /system/vendor/etc/default_audio_effects.xml /system/vendor/etc/audio_effects.xml
	chmod 0644 /system/vendor/etc/audio_effects.xml
	rm /system/vendor/etc/default_audio_effects.xml
fi
