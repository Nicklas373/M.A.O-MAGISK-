#FAQ

- What is DAC? 
: For simply documentation, DAC (Digital-To-Analog Converter)  A DAC takes digital data and transforms it into an analog audio signal. Afterward, it sends that analog signal to an amplifier. When you hear digital recordings, you’re actually listening to an analog signal that was converted from digital by a DAC. Even if you can’t see the DAC – although you sometimes can, as we’ll explore shortly – it’s there (from: https://www.audioadvice.com/content/what-is-a-dac/)

- Is Mido / Redmi Note 4X have a DAC?
: For generally isn't, DAC is a external hardware but Qualcomm somehow include that hardware into our soundcard (wcd9335) with Qualcomm Aqstic™ Audio Codec that support Hi-Fi / Hi-Res Playback up to 24bit / 192Khz (from: https://www.qualcomm.com/products/wcd9335)

- So Mido shouldn't have any problem with that feature, right?
: If you're on stock ROM (MIUI) then you'll be fine, cause DAC in that ROM is perfectly working, but if you're on custom ROM, specially for oreo or higher then i'm not sure. Since so much change on audio CAF or blobs source for following stream to always up to date, then some features like this can't be accessed.

- What's exist problem that mido have on pie for accessing internal DAC?
: Honestly i'm not pretty sure what is causing this issue, but from my research is point to 1 problem, it cause from audio source that used as compilation on ROM. Because i already try to replace some vendor blobs file but still not work, and with only this libs, internal DAC can be accessed, that mean stock libs is came from compilation lib when ROM is under compiling. That files generated from each ROM manifest, so if came from manifest then this should problem on audio source that are using it.

- Additional explanation about internal DAC
: Internal DAC, is accessing to your soundcard directly to get priority access to use higher device frequency and bit as device capatibility (in this case 24bit / 192Khz with permissions from audio policy in some application like Neutron music player, USB Audio Player (UAPP) and PowerAMP Music Player.

But on this new pie, audio policy seems get a problem because mido can't route to other section except [DEEP_BUFFER] That have limitation to only can sampling audio to 16 bit / 48Khz, although i already try to change it manually using neutron music player, for accessing hi-res frequency atleast mido should can use [DIRECT] or [DIRECT_PCM] flags to use hi-res audio.

Although this problem not exist with poweramp audio player, but PAMP itself use theirself engine call DVC (Direct Volume Control) that i'm still not really sure this is only bumped audio or any preset working to get hi-res working on pie.

But this problem is exist whenever i use Neutron Music Player or UAPP, this patch is fix that issue and replace as bare minimal libs that can replace to restore functionality without any massive change to your system.

- Why you really want to fix this issue? although already available as secondary option?
: For myself, i already addicted to hear hi-res audio since i've this phone with supported headset and audio file, i already search and know about audio basic and codecs inside it. So i'm prefer a pure audio sampling without any effects for audiophile experience.

Because that i create this build ....