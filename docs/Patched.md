# Patched Internal DAC Result For Mido

This is result for internal DAC Access for mido that using neutron music player as audio player
with patched ROM libs file.

- [Audio not standby after patch](https://github.com/Nicklas373/Internal_DAC_Fixer/blob/dev/test-10/docs/patched/audio_not_standby_after_patch.log)

This shown like normal audio flinger log, but with 1 skipped elements

- [Audio standby after patch](https://github.com/Nicklas373/Internal_DAC_Fixer/blob/dev/test-10/docs/patched/audio_standby_after_patch.log)

This shown almost same like top of explanation..
- If ROM with DIRAC audio effects that already implemented on settings, should not make any problem in this case. Since DIRAC only chains effects but state is on inactive when dump on audio flinger "state 000" is refer to inactive [If user was disabled it], thanks to neutron music player developer for this explanation.

- [Screen Neutron Unpatched 96KHz after patch #1](https://github.com/Nicklas373/Internal_DAC_Fixer/blob/dev/test-10/docs/patched/Screenshot_20190214-093915.png)
it shows like normally neutron that tell you're play with hi-res audio quality

- [Screen Neutron Unpatched 96KHz after patch #2](https://github.com/Nicklas373/Internal_DAC_Fixer/blob/dev/test-10/docs/patched/Screenshot_20190214-093925.png)

- [Screen Neutron Unpatched 96KHz after patch #3](https://github.com/Nicklas373/Internal_DAC_Fixer/blob/dev/test-10/docs/patched/Screenshot_20190214-093936.png)

but in all screenshot, it tell device isn't using any alsa audio server like what it should be shown as worked internal DAC access, so your internal DAC is working correctly with this patch.

NOTE: for screenshot #2 and #3 can't be accessed anymore if you're using enforcing ROM because on Enforcing SELinux that mido have [That's good for enforcing anyway], so it's really depend on media audio flinger command.
