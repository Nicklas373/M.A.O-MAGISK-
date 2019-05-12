# Mido Audio Optimizer (M.A.O) for Android 9.0.x (AOSP/LOS/MAGISK) | Xiaomi Redmi Note 4X (Snapdragon)

This is a magisk module that containt custom AudioPolicyManager libs to restore capatibility from accessing to DIRECT flags or other audio flags on Xiaomi Redmi Note 4x (Snapdragon) after getting patch on this [commit](https://github.com/syberia-project/platform_frameworks_av/commit/b263c3cd286090c00b16b562f9384a4f80e44377).

This package will restore AudioPolicyManager libs and updated audio config to your system, include CAF audio blobs and can control some audio high quality features on mido (WCD9335).

This package only have aim to restore internal DAC capatibility as bare minimum lib without any harsh modification.

# Project Status
![Build](https://img.shields.io/badge/Build%20Status-Updated-green.svg) ![Version](https://img.shields.io/badge/Latest%20Version-0.9.5-blue.svg) ![Library](https://img.shields.io/badge/Library%20Base-SyberiaOS%2020190511-blue.svg)
![Package](https://img.shields.io/badge/Package-Magisk-blue.svg) ![Magisk Template](https://img.shields.io/badge/Magisk%20Template-v19.0-blue.svg) 

What's features that enable to control (using app):
- Headset High Perfomance Mode (HPH v2)
- Ultra High Quality Audio Mode (UHQA Mode)
- Low Distortion AMP
- Headphone Impedance Detection

How to control Audio High Perfomance Mode:
- Install [M.A.O](https://github.com/Nicklas373/M.A.O) App
- Go to DAC Configure menu
- Enable features that exist on your kernel.
- Done

What's lib that get replaced (Core library) :
- /system/lib/libaudiopolicymanager.so
- /system/lib/libaudiopolicymanagerdefault.so

Additional library :
- /vendor/etc/audio_policy_configuration.xml
- /vendor/etc/audio_platform_info.xml
- /vendor/etc/audio_output_policy.conf
- /vendor/etc/audio_policy.conf
- /vendor/etc/media_codecs.xml
- /vendor/etc/media_codecs_vendor.xml
- /vendor/etc/media_codecs_vendor_audio.xml
- /vendor/etc/mixer_paths_mtp.xml
- /vendor/etc/sound_trigger_mixer_paths.xml

Compatibitily ROM of this patch (this for already tested):
- XenonHD Experimental Build
- Syberia OS Official Build
- Pixel Experience CAF Official Build (should work for AOSP build too)
- LineageOS 16 Unofficial Build

NOTE: 
- This module was created for almost all pie ROMs for Mido and if anyone want to use global version then check [Master](https://github.com/Nicklas373/Internal_DAC_Fixer/tree/master) branch. 
- JamesDSP audio effects was removed from audio config temporary (I'm not used that effects anymore)
- Audio High Quality Mode not enable by default, it need user action on app to enable it to avoid some performance degredation that happen on high gaming or high perfomance usage.
- Some features for audio high quality mode is not exist in all kernel, so not all features will same exist in every ROM.
- If bootloop was happen after flashing this mod, try to flash compatibility package on this release [Compatibitily](https://github.com/Nicklas373/M.A.O-MAGISK-/releases/tag/1.0-C)

Other Information Catalog:
- [FAQ](https://github.com/Nicklas373/Internal_DAC_Fixer/blob/master/docs/FAQ.md)
- [How to check internal DAC is working](https://github.com/Nicklas373/Internal_DAC_Fixer/blob/master/docs/Neutron.md)
- [Patched Internal DAC Result](https://github.com/Nicklas373/Internal_DAC_Fixer/blob/master/docs/Patched.md)
- [Unpatched Internal DAC Result](https://github.com/Nicklas373/Internal_DAC_Fixer/blob/master/docs/Unpatched.md)
