#!/system/bin/sh
#

#Mounting Your System
	mount -o remount,rw /system
	
#Backup your stock libs file
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
	cp /vendor/etc/audio_policy.conf /sdcard/backup/vendor/etc/audio_policy.conf
	cp /vendor/etc/audio_platform_info.xml /sdcard/backup/vendor/etc/audio_platform_info.xml
	cp /vendor/etc/audio_mixer_paths_mtp.xml /sdcard/backup/vendor/etc/audio_mixer_paths_mtp.xml
	cp /vendor/etc/audio_policy_configuration.xml /sdcard/backup/vendor/etc/audio_policy_configuration.xml