#!/system/bin/sh
#

#Mounting Your System
	mount -o remount,rw /system
	
#Backup your stock libs file
if [ "`grep ro.product.name=syberia_mido /system/build.prop`" ];
then 
	mkdir /sdcard/backup
	mkdir /sdcard/backup/lib
	mkdir /sdcard/backup/lib64
	mkdir /sdcard/backup/vendor
	mkdir /sdcard/backup/vendor/etc
	cp /system/lib/libaudioclient.so /sdcard/backup/lib/libaudioclient.so
	cp /system/lib/libaudioeffect_jni.so /sdcard/backup/lib/libaudioeffect_jni.so
	cp /system/lib/libaudioflinger.so /sdcard/backup/lib/libaudioflinger.so
	cp /system/lib/libaudiopolicyenginedefault.so /sdcard/backup/lib/libaudiopolicyenginedefault.so
	cp /system/lib/libaudiopolicymanager.so /sdcard/backup/lib/libaudiopolicymanager.so
	cp /system/lib/libaudiopolicymanagerdefault.so /sdcard/backup/lib/libaudiopolicymanagerdefault.so 
	cp /system/lib/libaudiopolicyservice.so /sdcard/backup/lib/libaudiopolicyservice.so
	cp /system/lib/libaudioprocessing.so /sdcard/backup/lib/libaudioprocessing.so
	cp /system/lib/libsoundpool.so /sdcard/backup/lib/libsoundpool.so
	cp /system/lib/libsoundtrigger.so /sdcard/backup/lib/libsoundtrigger.so
	cp /system/lib/libsoundtriggerservice.so /sdcard/backup/lib/libsoundtriggerservice.so
	cp /system/lib64/libaudioclient.so /sdcard/backup/lib64/libaudioclient.so
	cp /system/lib64/libaudiopolicyenginedefault.so /sdcard/backup/lib64/libaudiopolicyenginedefault.so
	cp /system/lib64/libaudiopolicymanager.so /sdcard/backup/lib64/libaudiopolicymanager.so
	cp /system/lib64/libaudiopolicymanagerdefault.so /sdcard/backup/lib64/libaudiopolicymanagerdefault.so
	cp /system/lib64/libaudiopolicyservice.so /sdcard/backup/lib64/libaudiopolicyservice.so
	cp /system/lib64/libaudioroute.so /sdcard/backup/lib64/libaudioroute.so 
	cp /vendor/etc/audio_effects.xml /sdcard/backup/vendor/etc/audio_effects.xml
	cp /vendor/etc/audio_output_policy.conf /sdcard/backup/vendor/etc/audio_output_policy.conf
	cp /vendor/etc/audio/audio_policy.conf /sdcard/backup/vendor/etc/audio/audio_policy.conf
else
	mkdir /sdcard/backup
	mkdir /sdcard/backup/lib
	mkdir /sdcard/backup/lib64
	mkdir /sdcard/backup/vendor
	mkdir /sdcard/backup/vendor/etc
	cp /system/lib/libaudioclient.so /sdcard/backup/lib/libaudioclient.so
	cp /system/lib/libaudioeffect_jni.so /sdcard/backup/lib/libaudioeffect_jni.so
	cp /system/lib/libaudioflinger.so /sdcard/backup/lib/libaudioflinger.so
	cp /system/lib/libaudiopolicyenginedefault.so /sdcard/backup/lib/libaudiopolicyenginedefault.so
	cp /system/lib/libaudiopolicymanager.so /sdcard/backup/lib/libaudiopolicymanager.so
	cp /system/lib/libaudiopolicymanagerdefault.so /sdcard/backup/lib/libaudiopolicymanagerdefault.so 
	cp /system/lib/libaudiopolicyservice.so /sdcard/backup/lib/libaudiopolicyservice.so
	cp /system/lib/libaudioprocessing.so /sdcard/backup/lib/libaudioprocessing.so
	cp /system/lib/libsoundpool.so /sdcard/backup/lib/libsoundpool.so
	cp /system/lib/libsoundtrigger.so /sdcard/backup/lib/libsoundtrigger.so
	cp /system/lib/libsoundtriggerservice.so /sdcard/backup/lib/libsoundtriggerservice.so
	cp /system/lib64/libaudioclient.so /sdcard/backup/lib64/libaudioclient.so
	cp /system/lib64/libaudiopolicyenginedefault.so /sdcard/backup/lib64/libaudiopolicyenginedefault.so
	cp /system/lib64/libaudiopolicymanager.so /sdcard/backup/lib64/libaudiopolicymanager.so
	cp /system/lib64/libaudiopolicymanagerdefault.so /sdcard/backup/lib64/libaudiopolicymanagerdefault.so
	cp /system/lib64/libaudiopolicyservice.so /sdcard/backup/lib64/libaudiopolicyservice.so
	cp /system/lib64/libaudioroute.so /sdcard/backup/lib64/libaudioroute.so 
fi

#Remove DIRAC Audio Effetcs From System
	rm /system/lib/soundfx/libdirac.so
	rm /system/lib/libDiracAPI_SHARED.so
	rm /system/vendor/etc/diracmobile.config
	sed -i '/persist.audio.dirac.speaker=true/d' /vendor/build.prop
