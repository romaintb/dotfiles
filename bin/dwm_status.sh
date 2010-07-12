while true
do
	MPD_TITLE=`mpc | head -1`
	MPD_TIME=`mpc | head -2 | tail -1 | awk '{print $3}'`
	MPD_VOLUME=`mpc volume | sed s"/ //"g | sed s"/volume://"g`
	#MAILS=`find .maildir -path "*/new/*" | grep -v heberg | wc -l`
	DATE=`date`

	#xsetroot -name " $MPD_TITLE ($MPD_TIME) ($MPD_VOLUME) | mails: $MAILS | $DATE"
	xsetroot -name "$MPD_TITLE ($MPD_TIME) ($MPD_VOLUME) | $DATE"
	sleep 1
done
