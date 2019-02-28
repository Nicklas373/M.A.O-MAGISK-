# Patched Internal DAC Result For Mido

This is result for internal DAC Access for mido that using neutron music player as audio player
with patched ROM libs file.

- [Audio not standby after patch](https://github.com/Nicklas373/Internal_DAC_Fixer/blob/master/docs/patched/audio_not_standby_after_patch.log)

This shown like normal audio flinger log, but with 1 skipped elements

- [Audio standby after patch](https://github.com/Nicklas373/Internal_DAC_Fixer/blob/master/docs/patched/audio_standby_after_patch.log)

This shown almost same like top of explanation..
- If ROM with DIRAC audio effects is implemented on settings then no any DIRAC Audio Effect chains, cause i already remove all dirac from system, and it encode perfectly to 96khz with PCM_24BIT_PACKED without any conversion.
- If ROM without DIRAC audio effects like xenonhd then DIRAC still works as that log tell but not happen any conversion cause DIRAC isn't active on default audio processing. Only as audio effects when enable in audiofx or etc.

- [Screen Neutron Unpatched 96KHz after patch #1](https://github.com/Nicklas373/Internal_DAC_Fixer/blob/master/docs/patched/Screenshot_20190214-093915.png)
it shows like normally neutron that tell you're play with hi-res audio quality

- [Screen Neutron Unpatched 96KHz after patch #2](https://github.com/Nicklas373/Internal_DAC_Fixer/blob/master/docs/patched/Screenshot_20190214-093925.png)

- [Screen Neutron Unpatched 96KHz after patch #3](https://github.com/Nicklas373/Internal_DAC_Fixer/blob/master/docs/patched/Screenshot_20190214-093936.png)

but in all screenshot, it tell device isn't using any alsa audio server like what it should be shown as worked internal DAC access, so your internal DAC is working correctly with this patch.

NOTE: for screenshot #2 and #3 can't be accessed anymore if you're using enforcing ROM (i don't know why), so it's really depend on media audio flinger command.