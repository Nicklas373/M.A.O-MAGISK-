#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in post-fs-data mode
# More info in the main Magisk thread
resetprop persist.bt.enableAptXHD true
resetprop persist.service.btui.use_aptx 1
resetprop persistent.bt.a2dp_offload_cap sbc-aptx-aptXHD-aac
