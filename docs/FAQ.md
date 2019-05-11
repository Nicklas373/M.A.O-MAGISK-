#FAQ

- What is DAC? 
: For simply documentation, DAC (Digital-To-Analog Converter)  A DAC takes digital data and transforms it into an analog audio signal. Afterward, it sends that analog signal to an amplifier. When you hear digital recordings, you’re actually listening to an analog signal that was converted from digital by a DAC. Even if you can’t see the DAC – although you sometimes can, as we’ll explore shortly – it’s there (from: https://www.audioadvice.com/content/what-is-a-dac/)

- Is Mido / Redmi Note 4X have a DAC Support?
: For generally isn't, DAC is a external hardware but Qualcomm somehow include that hardware into our soundcard (wcd9335) with Qualcomm Aqstic™ Audio Codec that support Hi-Fi / Hi-Res Playback up to 24bit / 192Khz (from: https://www.qualcomm.com/products/wcd9335)

- So Mido shouldn't have any problem with that feature, right?
: If you're on stock ROM (MIUI) then you'll be fine, cause DAC in that ROM is perfectly working, but if you're on custom ROM, specially for oreo or higher then i'm not sure. Since AudioPolicyManager service is getting update that broke capatibility to change other flags beside DEEP_BUFFER, then some features like this can't be accessed.

- What is the current problem that Mido have on Oreo or Pie to accessing DAC feature?
: AudioPolicyManager will always use to DEEP_BUFFER flags. when system request to change to another audio flags then audio policy services will failed and throw back to DEEP_BUFFER by default because AudioPolicyManager
 set it priority to DEEP_BUFFER flags when streaming music or media.
 
 From this commit [syberia-project/platform_frameworks_av@b263c3c](https://github.com/syberia-project/platform_frameworks_av/commit/b263c3cd286090c00b16b562f9384a4f80e44377)
 
 revert that commit and change this prop files from "audio.offload.enable=false"  to true can make device use other flags beside DEEP_BUFFER when streaming media or music.

- Why you really want to fix this issue? although Poweramp available as secondary option?
: For myself, i already addicted to hear hi-res audio since i've this phone with supported headset and audio file, i already search and know about audio basic and codecs inside it. So i'm prefer a pure audio sampling without any effects for audiophile experience.

- What is DIRAC or Mi Sound Enhancher that actually included in my Mido?
: DIRAC or Mi Sound Enhancher is like other audio equalizer or audio effects that have same function to virtualize your audio experience when you active it, it's like sony soundenhancement, harman kardon (for samsung), Viper4androidFX and etc. It's actually sampling down all audio frequency to 48Khz and upsampling all audio frequency to android native audio playback (16bit 48Khz) when this effects is active.

This not recommended when you want to use Hi-Res audio feature when this feature is enable, so try to disable this feature before use Hi-Res audio, or downsampling is happen.

- Why you disabled new volume listener library?
This is same like a new postprocessing feature that was added from qualcomm itself, it called as "Qualcomm Volume listener" Library. This module work for music processing, notification, in-call, and alarm processing. When listening a music using Hi-Res Audio, audio sample rate conversion isn't happen but bit-depth conversion is happen. This effects can perfectly use 24 bit but switch to floating point bit depth, that not good quality or can be use 32fp or even worse because that effects is active.

This is effects was found on latest CAF tag for audio source, normally not enable for mido but was found enable on other devices like beryllium and lavender. I already revert "music listener" feature only after try to port it.
