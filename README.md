# Mido Internal DAC Fixer for android 9.0.x (AOSP/LOS/MAGISK)

This is a magisk module that containt several libs to restore capatibility of accessing to internal DAC (DIRECT/DIRECT_PCM) from audio policy on Mido devices after getting updates to latest Pie versions.

This package will restore all lib,libs64 and audio_effects.xml to vendor/etc to your system and install updated audio caf pre-built effects to your system.

NOTE: This module only for xenon hd pie ROMs, or other pie ROMs that still not included DIRAC in their settings option, if anyone want to use global version then check [Master](https://github.com/Nicklas373/Internal_DAC_Fixer/tree/master) branch.

This package only have aim to restore internal DAC capatibility as bare minimum lib without any harsh modification, no other else and not have any means to insult anyone that work with mido since this is only for my personal use. (Anyone can use it, but DWYOR)

# Project Status
![Build](https://img.shields.io/badge/Build%20Status-Updated-green.svg) ![Version](https://img.shields.io/badge/Latest%20Version-0.7-blue.svg) ![Library](https://img.shields.io/badge/Library%20Base-LiquidRemix%2020181220%20-blue.svg)
![Package](https://img.shields.io/badge/Package-Magisk-blue.svg)

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
- /vendor/etc/audio_effects.xml
- /vendor/etc/audio_output_policy.conf
- /vendor/etc/audio_platform_info.xml
- /vendor/etc/audio_policy.conf
- /vendor/etc/audio_policy_configuration.xml
- /vendor/etc/mixer_paths_mtp.xml

Compatibitily ROM of this patch (This for magisk module):
- XenonHD Experimental Build

Other Information Catalog:
- [FAQ](https://github.com/Nicklas373/Internal_DAC_Fixer/blob/master/docs/FAQ.md)
- [How to check internal DAC is working](https://github.com/Nicklas373/Internal_DAC_Fixer/blob/master/docs/Neutron.md)
- [Patched Internal DAC Result](https://github.com/Nicklas373/Internal_DAC_Fixer/blob/master/docs/Patched.md)
- [Unpatched Internal DAC Result](https://github.com/Nicklas373/Internal_DAC_Fixer/blob/master/docs/Unpatched.md)
