# Mido Audio Optimizer (M.A.O) for Android 9.0.x (AOSP/LOS/MAGISK) | Xiaomi Redmi Note 4X (Snapdragon)

This is a magisk module that will modified system audio properties to bring pure audio performance and also restore capatibility from accessing to DIRECT flags or other audio flags on Xiaomi Redmi Note 4x (Snapdragon) in some audio player apps with Hi-Res compatibility on mido (WCD9335).

This package only have aim to restore internal DAC capatibility as bare minimum files without any harsh modification, no other else and not have any means to insult anyone that work with Mido since this is only for my personal use. (Anyone can use it, but DWYOR).

# Project Status
![Build](https://img.shields.io/badge/Build%20Status-Updated-green.svg) ![Version](https://img.shields.io/badge/Latest%20Version-0.9.8-blue.svg)
![Package](https://img.shields.io/badge/Package-Magisk-blue.svg) ![Magisk Template](https://img.shields.io/badge/Magisk%20Template-v19.0-blue.svg) 

How to control Audio High Perfomance Mode:
- Install [M.A.O](https://github.com/Nicklas373/M.A.O) App
- Go to kernel audio features menu
- Enable features that exist on your kernel.
- Done

Additional library :
- /vendor/etc/audio_effects.xml
- /vendor/etc/audio_policy_configuration.xml
- /vendor/etc/audio_platform_info.xml
- /vendor/etc/audio_output_policy.conf
- /vendor/etc/audio_policy.conf
- /vendor/etc/mixer_paths_mtp.xml
- /vendor/etc/sound_trigger_mixer_paths.xml
- /vendor/etc/sound_trigger_mixer_platform_info.xml
- /vendor/lib/soundfx/qcbassboost.so
- /vendor/lib/soundfx/qcreverb.so
- /vendor/lib/soundfx/qcvirt.so
- /vendor/lib64/soundfx/qcbassboost.so
- /vendor/lib64/soundfx/qcvirt.so

Compatibitily ROM of this patch (this for already tested):
- XenonHD Experimental Build
- Syberia OS Official Build
- Pixel Experience CAF Official Build (should work for AOSP build too)
- LineageOS 16 Unofficial Build

NOTE: 
- This module was created for almost all pie ROMs for Mido and if anyone want to use global version then check [Flashable](https://github.com/Nicklas373/Internal_DAC_Fixer/tree/flashable) branch. 
- JamesDSP audio effects was removed from audio config temporary (I'm not used that effects anymore)
- Audio High Quality Mode not enable by default, it need user action on app to enable it to avoid some performance degredation that happen on high gaming or high perfomance usage.
- Some features for audio high quality mode is not exist in all kernel, so not all features will same exist in every ROM.
- If bootloop was happen after flashing this mod, try to flash compatibility package on this release [Compatibility](https://github.com/Nicklas373/M.A.O-MAGISK-/releases/tag/1.0-C)
- This module won't compatible with any soundmod during i use pure audio effects from mido, but dirac audio effects will work fine.

Other Information Catalog:
- [FAQ](https://github.com/Nicklas373/Internal_DAC_Fixer/blob/master/docs/FAQ.md)
- [How to check internal DAC is working](https://github.com/Nicklas373/Internal_DAC_Fixer/blob/dev/magisk/docs/Neutron.md)
- [Patched Internal DAC Result](https://github.com/Nicklas373/Internal_DAC_Fixer/blob/dev/magisk/docs/Patched.md)
- [Unpatched Internal DAC Result](https://github.com/Nicklas373/Internal_DAC_Fixer/blob/dev/magisk/docs/Unpatched.md)
