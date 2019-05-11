# Unpatched Internal DAC Result For Mido

This is result for internal DAC Access for mido that using neutron music player as audio player
with unpatched ROM libs file.

- [Audio not standby before patch](https://github.com/Nicklas373/Internal_DAC_Fixer/blob/master/docs/unpatched/audio_not_standby_before_patch.log)

This shown like normal audio flinger log, but with 2 skipped elements

- [Audio standby before patch](https://github.com/Nicklas373/Internal_DAC_Fixer/blob/master/docs/unpatched/audio_standby_before_patch.log)

This shown almost same like top of explanation, with DIRAC Audio effects chains and sampling 48Khz, 16 bit with [DEEP_BUFFER] audio policy, NOTE: i already try to push this neutron music player to accessing hi-res output with all flags change, but that not working correctly.

- [Screen Neutron Unpatched 96KHz before patch #1](https://github.com/Nicklas373/Internal_DAC_Fixer/blob/master/docs/unpacthed/Screenshot_20190214-092630.png)
it shows like normally neutron that tell you're play with hi-res audio quality

- [Screen Neutron Unpatched 96KHz before patch #2](https://github.com/Nicklas373/Internal_DAC_Fixer/blob/master/docs/unpacthed/Screenshot_20190214-092645.png)

- [Screen Neutron Unpatched 96KHz before patch #3](https://github.com/Nicklas373/Internal_DAC_Fixer/blob/master/docs/unpacthed/Screenshot_20190214-092657.png)

but in all screenshot, it tell device still using alsa audio server that tell true about your audio output quality that encoding by your device, it tell 16 bit 48Khz....

NOTE: If internal dac is working, all alsa port should be closed, and on audio flinger, it already tell as 96khz in a log, not 48khz...

and for screenshot #2 and #3 can't be accessed anymore if you're using enforcing ROM because on Enforcing SELinux that mido have [That's good for enforcing anyway], so it's really depend on media audio flinger command.
