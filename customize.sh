ui_print "                                 "
ui_print "******Mido Audio Optimizer*******"
ui_print "*                               *"
ui_print "*    For Pie ROM Based Only     *"
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
		ui_print "Your '"$DEVICE"' is compatible"
	
		if [ $API == "28" ];
			then
				ui_print "Your '"$API"' is compatible"
				ui_print " "
				ui_print "****************** Software ********************"
				ui_print "Custom Package  : Mido Audio Optimizer          "
				ui_print "Android version : 9.0.x                         "
				ui_print "SDK version     : 28                            "
				ui_print "Build date      : Thu Jan 16 22:26:20 GMT+7 2019"
				ui_print "Build ID        : 1.0.0                         "
				ui_print "Developed By    : Dicky Herlambang              "
				ui_print "************************************************"
				ui_print " "
		elif [ $API != "28" ];
			then
				 abort "Your API Level '"$API"' is not supported yet"
		fi
elif [ $DEVICE != "mido" ];
	then
		abort "Your Device '"$DEVICE"' is not supported yet"
fi
