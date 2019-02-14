# Mido Internal DAC Fixer for android 9.0.x (AOSP/LOS)

This is a flashable zip that containt several libs to restore capatibility of accessing to internal DAC (DIRECT/DIRECT_PCM) from audio policy on Mido devices after getting updates to latest Pie versions.

This package will restore all lib,libs64 and audio_effects.xml to vendor/etc to your system and remove all DIRAC Audio Effects from over the system.

This package only have aim to restore internal DAC capatibility, no other else and not have any means to insult anyone that work with mido since this is only for my personal use. (Anyone can use it, but DWYOR)

What's lib that get replaced :
- /system/lib/libaudioclient.so
- /system/lib/libaudioeffect_jni.so
- /system/lib/libaudioflinger.so
- /system/lib/libaudiopolicyenginedefault.so
- /system/lib/libaudiopolicymanager.so
- /system/lib/libaudiopolicymanagerdefault.so
- /system/lib/libaudiopolicyservice.so
- /system/lib/libaudioprocessing.so
- /system/lib/libsoundpool.so
- /system/lib/libsoundtrigger.so
- /system/lib/libsoundtriggerservice.so
- /system/lib64/libaudioclient.so
- /system/lib64/libaudiopolicyenginedefault.so
- /system/lib64/libaudiopolicymanager.so
- /system/lib64/libaudiopolicymanagerdefault.so
- /system/lib64/libaudiopolicyservice.so
- /system/lib64/libaudioroute.so
- /vendor/etc/audio_effects.xml

What's lib that removed :
- /system/lib/soundfx/libdirac.so
- /system/lib/libDiracAPI_SHARED.so
- /system/vendor/etc/diracmobile.config
- String "/persist.audio.dirac.speaker=true/d" on vendor/build.prop

Compatibitily ROM of this patch (so far that i tested):
- XenonHD Experimental Build
- Syberia OS Official Build

Current lib that used for this patch is from :
- LiquidRemix 20181220 Official Build

Other Information Catalog:
- [FAQ](https://github.com/Nicklas373/Internal_DAC_Fixer/blob/master/docs/FAQ.md)
- [How to check internal DAC is working](https://github.com/Nicklas373/Internal_DAC_Fixer/blob/master/docs/Neutron.md)