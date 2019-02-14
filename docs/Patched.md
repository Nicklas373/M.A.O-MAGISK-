# Patched Internal DAC Result For Mido

This is result for internal DAC Access for mido that using neutron music player as audio player
with patched ROM libs file.

- [Audio not standby after patch](https://github.com/Nicklas373/Internal_DAC_Fixer/blob/master/docs/pacthed/audio_not_standby_before_patch.log)

This shown like normal audio flinger log, but with 1 skipped elements

- [Audio standby after patch](https://github.com/Nicklas373/Internal_DAC_Fixer/blob/master/docs/pacthed/audio_standby_before_patch.log)

This shown almost same like top of explanation, with no any DIRAC Audio Effect chains, cause i already remove all dirac from system, and it encode perfectly to 96khz with PCM_24BIT_PACKED without any conversion.

- [Screen Neutron Unpatched 96KHz after patch #1](https://github.com/Nicklas373/Internal_DAC_Fixer/blob/master/docs/patched/Screenshot_20190214-093915.png)
it shows like normally neutron that tell you're play with hi-res audio quality

- [Screen Neutron Unpatched 96KHz after patch #2](https://github.com/Nicklas373/Internal_DAC_Fixer/blob/master/docs/patched/Screenshot_20190214-093925.png)

- [Screen Neutron Unpatched 96KHz after patch #3](https://github.com/Nicklas373/Internal_DAC_Fixer/blob/master/docs/patched/Screenshot_20190214-093936.png)

but in all screenshot, it tell device isn't using any alsa audio server like what it should be shown as worked internal DAC access, so your internal DAC is working correctly with this patch.