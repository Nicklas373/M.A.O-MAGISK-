ui_print "                                 "
ui_print "******Mido Audio Optimizer*******"
ui_print "*                               *"
ui_print "*    For Q ROM Based Only       *"
ui_print "*                               *"
ui_print "*********************************"
ui_print "                                 "
ui_print " "

DEVICE=`getprop ro.product.device`
API=`getprop ro.build.version.sdk`

ui_print "Your device: "$DEVICE
ui_print "SDK Version: "$API

ui_print " "

if [ $DEVICE == "mido" ];
	then
		if [ $API == "29" ];
			then
				ui_print " "
				ui_print "****************** Software ********************"
				ui_print "Custom Package  : Mido Audio Optimizer          "
				ui_print "Android version : 10                            "
				ui_print "SDK version     : 29                            "
				ui_print "Build date      : Thu Apr 02 16:55:20 GMT+7 2020"
				ui_print "Build ID        : 1.0.2                         "
				ui_print "Developed By    : Dicky Herlambang              "
				ui_print "************************************************"
				ui_print " "
		elif [ $API != "29" ];
			then
				 abort "Your API Level '"$API"' is not supported yet"
		fi
elif [ $DEVICE != "mido" ];
	then
		abort "Your Device '"$DEVICE"' is not supported yet"
fi
