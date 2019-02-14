#How to check internal DAC is working

I'm using neutron music player for this case, for another music player maybe you can use UAPP but i'm not providing any guide for that because i'm not using it right now.

What item that you'll need (NOTE: THIS CAN BE APPLIED TO OTHER DEVICE, NOT ONLY FOR MIDO) :
- [Neutron Music Player] (https://play.google.com/store/apps/details?id=com.neutroncode.mp&hl=en)
- [ADB Debugging Tools] (https://androidfilehost.com/?fid=746010030569952951)
- Working headset & phone 

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
	   : - Hi-Res Codec (DIRECT_PCM) (on)
	     - Hi-Res Speaker (on)
		 - Hi-Res Bluetooth (on)
     - 32-bit Output (IEEE 754) (off)
	 - Low latency (off)
	 - Direct USB Access (on)
	 - DSD, DSD over PCM (DoP) (on)
	 - Follow Source Frequency (on) [MAKE SURE YOU'VE AUDIO WITH 24BIT/96KHz)
	 - Click checklist icon
  (settings -> resampling)
  :  - choose audiophile
     - Click checklist icon
- Start ADB on your device (I won't explain further details how to use ADB, google is your friends)
- Play a song with connected headset and type this command on command prompt,powershell,linux bash or other else that you're using it.

  dumpsys media.audio_flinger
  
- After that search which port that is using it, normally it have output device detected as wired headset with 96Khz sample rate and 24 bit PCM packed for bit depth.

This is if working hi-res ouput is show :

Output thread 0xf0bc4000, name AudioOut_4D, tid 7240, type 1 (DIRECT):
  I/O handle: 77
  Standby: no
  Sample rate: 96000 Hz
  HAL frame count: 3840
  HAL format: 0x6 (AUDIO_FORMAT_PCM_24_BIT_PACKED)
  HAL buffer size: 23040 bytes
  Channel count: 2
  Channel mask: 0x00000003 (front-left, front-right)
  Processing format: 0x6 (AUDIO_FORMAT_PCM_24_BIT_PACKED)
  Processing frame size: 6 bytes
  Pending config events: none
  Output device: 0x4 (AUDIO_DEVICE_OUT_WIRED_HEADSET)
  Input device: 0 (AUDIO_DEVICE_NONE)
  Audio source: 0 (default)
  Normal frame count: 3840
  Last write occurred (msecs): 14
  Total writes: 332
  Delayed writes: 0
  Blocked in write: yes
  Suspend count: 0
  Sink buffer : 0xf00ef000
  Mixer buffer: 0xf0b9b000
  Effect buffer: 0xf00f6000
  Fast track availMask=0xfe
  Standby delay ns=1000000000
  AudioStreamOut: 0xf20ada40 flags 0x1 (AUDIO_OUTPUT_FLAG_DIRECT)
  Frames written: 1274880
  Suspended frames: 0
  Hal stream dump:
  Stream volumes in dB: 0:-10, 1:-36, 2:-36, 3:-inf, 4:-36, 5:-36, 6:-inf, 7:-36, 8:-21, 9:-96, 10:-58, 11:0, 12:0
  Normal mixer raw underrun counters: partial=0 empty=0
  1 Tracks of which 1 are active
    T Name Active Client Session S  Flags   Format Chn mask  SRate ST  L dB  R dB  VS dB   Server FrmCnt  FrmRdy F Underruns  Flushed Main Buf  Aux Buf
         0    yes   7202      17 A  0x000 00000006 00000003  96000  3     0     0     0  00138300   7872    7872 A         0        0 F00EF000 00000000
  0 Effect Chains
  Local log:
   02-14 09:38:54.848 CFG_EVENT_CREATE_AUDIO_PATCH: old device 0x4 (AUDIO_DEVICE_OUT_WIRED_HEADSET) new device 0x4 (AUDIO_DEVICE_OUT_WIRED_HEADSET)
   02-14 09:38:54.854 AT::add       (0xf20f3180)      0     no   7202      17 A  0x000 00000006 00000003  96000  3     0     0     0  00000000   7872       0 f         0        0 F00EF000 00000000
   
   NOTE; Audio name will be different for each devices, so keep looking for output,sample rate and bitd epth.