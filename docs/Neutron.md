# How to check internal DAC is working

I'm using neutron music player for this case, for another music player maybe you can use UAPP but i'm not providing any guide for that because i'm not using it right now.

What item that you'll need (NOTE: THIS CAN BE APPLIED TO OTHER DEVICE, NOT ONLY FOR MIDO) :
- [Neutron Music Player](https://play.google.com/store/apps/details?id=com.neutroncode.mp&hl=en)
- [Neutron Music Player EVAL](https://play.google.com/store/apps/details?id=com.neutroncode.mpeval&hl=en)
- [ADB Debugging Tools](https://androidfilehost.com/?fid=746010030569952951)
- Supporting headset or headphone 

How to check it :
- Install neutron music player first
- Setting up like this (settings -> audio hardware)
  :  - DSP Effect (off)
     - Mono (off)
	 - Dither (off)
	 - Phase Inversion (off)
	 - Subsonic Filter (off)
	 - Ultrasonic Filter (off)
	 - Reverse stereo (off)
	 - Hardware gain (on)
	 - Audio Focus (on)
	 - Generic Driver (on) (click generic driver for advanced option)
	   : - Hi-Res Codec (DIRECT_PCM) (off)
	     - Hi-Res Speaker (on)
	     - Hi-Res Bluetooth (on)
	     - Custom Format (on)
		:  - Format (16bit int, 24bit int, 32bit int)
		   - Frequency (44100,48000,88200,96000,176400,192000)
		   - Mode (DIRECT)
     - 32-bit Output (IEEE 754) (off)
	 - Low latency (off)
	 - Direct USB Access (on)
	 - DSD, DSD over PCM (DoP) (on)
	 - Follow Source Frequency (on) [MAKE SURE YOU'VE AUDIO WITH 24BIT/96KHz]
	 - Click checklist icon
  (settings -> resampling)
  :  - choose audiophile
     - Click checklist icon
- Start ADB on your device (I won't explain further details how to use ADB, google is your friends)
- Play a song with connected headset and type this command on command prompt,powershell,linux bash or other else that you're using it.

  dumpsys media.audio_flinger
  
- After that search which port that is using it, normally it have output device detected as wired headset with 96Khz sample rate and 24 bit PCM packed for bit depth.

- Watch the HAL buffer size,
	* if you play audio with 32bit 192.0Khz then it should equals to 61440 bytes
	* if you play audio with 24bit 192.0Khz then it should equals to 46080 bytes
	* if you play audio with 24bit 96.0Khz then it should equals to 23040 bytes
	* if you play audio with 24bit 48.0Khz then it should equals to 11520 bytes 
	* if you play audio with 24bit 44.1Khz then it should equals to 10752 bytes

NOTE :
- Mido maximum capatibility is encode 32bit 192.0 Khz.
- Other ROMs beside Syberia OS or not applied patch to push 24bit by default, only have capatibility to encode 16bit/48Khz at max and standby, Can't be higher during audiopolicy problem (So Qualcomm Aqstic Audio isn't used in this case)

This is if working hi-res ouput is show :

- Output thread 0xe7fee000, name AudioOut_4D, tid 4877, type 1 (DIRECT):
  - I/O handle: 77
  - Standby: no
  - Sample rate: 96000 Hz
  - HAL frame count: 3840
  - HAL format: 0x6 (AUDIO_FORMAT_PCM_24_BIT_PACKED)
  - HAL buffer size: 23040 bytes
  - Channel count: 2
  - Channel mask: 0x00000003 (front-left, front-right)
  - Processing format: 0x6 (AUDIO_FORMAT_PCM_24_BIT_PACKED)
  - Processing frame size: 6 bytes
  - Pending config events: none
  - Output device: 0x4 (AUDIO_DEVICE_OUT_WIRED_HEADSET)
  - Input device: 0 (AUDIO_DEVICE_NONE)
  - Audio source: 0 (default)
  - Normal frame count: 3840
  - Last write occurred (msecs): 18
  - Total writes: 71
  - Delayed writes: 0
  - Blocked in write: yes
  - Suspend count: 0
  - Sink buffer : 0xe6daa000
  - Mixer buffer: 0xe6d9a000
  - Effect buffer: 0xe6db1000
  - Fast track availMask=0xfe
  - Standby delay ns=1000000000
  - AudioStreamOut: 0xe911b370 flags 0x1 (AUDIO_OUTPUT_FLAG_DIRECT)
  - Frames written: 272640
  - Suspended frames: 0
  - Hal stream dump:
  - Stream volumes in dB: 0:-14, 1:-27, 2:-26, 3:-26, 4:-26, 5:-26, 6:-inf, 7:-27, 8:-21, 9:-96, 10:-27, 11:0, 12:0
  - Normal mixer raw underrun counters: partial=0 empty=0
  - 1 Tracks of which 1 are active
    - T Name Active Client Session S  Flags   Format Chn mask  SRate ST  L dB  R dB  VS dB   Server FrmCnt  FrmRdy F = Underruns  Flushed Main Buf  Aux Buf
         - 0    yes   4744      65 A  0x000 00000006 00000003  96000  3     0     0     0  00043800   7872    7872 A         0        0 E6DAA000 00000000
  - 0 Effect Chains
  - Local log:
   - 04-13 21:11:44.293 CFG_EVENT_CREATE_AUDIO_PATCH: old device 0x4 (AUDIO_DEVICE_OUT_WIRED_HEADSET) new device 0x4 (AUDIO_DEVICE_OUT_WIRED_HEADSET)
   - 04-13 21:11:44.295 AT::add       (0xe6d95280)      0     no   4744      65 A  0x000 00000006 00000003  96000  3     0    - 0     0  00000000   7872       0 f         0        0 E6DAA000 00000000
   
   NOTE; Audio name will be different for each devices, so keep looking for output,sample rate and bit depth.
