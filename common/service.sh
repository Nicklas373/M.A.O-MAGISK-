#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode
# Let's disable Audio High Perfomance Mode on Mido (WCD9335)
# This will reduce some distortion when on high gaming usage
#
# 1. Headset High Perfomance Mode (HPH v2)
# 2. Ultra High Quality Audio Mode (UHQA Mode)
# 3. Low Distortion AMP
# 4. Headphone Impedance Detection
# 5. Qualcomm biQuads power gating feature

# Let it sleep first for 30 second
sleep 30

# Set permission for Audio High Performance Mode
chmod 0644 /sys/module/snd_soc_wcd9330/parameters/high_perf_mode
chmod 0644 /sys/module/snd_soc_wcd9335/parameters/huwifi_mode
chmod 0644 /sys/module/snd_soc_wcd9335/parameters/low_distort_amp
chmod 0644 /sys/module/snd_soc_wcd9335/parameters/dig_core_collapse_enable
chmod 0644 /sys/module/snd_soc_wcd9xxx/parameters/impedance_detect_en

# Disable Audio High Perfomance Mode by default on boot
# Let M.A.O (App) configure it by itself (Userspace should control it)
echo "0" > /sys/module/snd_soc_wcd9330/parameters/high_perf_mode
echo "0" > /sys/module/snd_soc_wcd9335/parameters/huwifi_mode
echo "0" > /sys/module/snd_soc_wcd9335/parameters/low_distort_amp
echo "0" > /sys/module/snd_soc_wcd9335/parameters/dig_core_collapse_enable
echo "0" > /sys/module/snd_soc_wcd9xxx/parameters/impedance_detect_en
