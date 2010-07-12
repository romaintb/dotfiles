#!/bin/sh
MAILS=`find ~/.maildir -path "*/new/*"| grep -v spam | grep -v ob- | wc -l | tr -d " "`
MAILS_ML=`find ~/.maildir -path "*/new/*"| grep -v spam | grep ob- | wc -l | tr -d " "`
echo "ml : $MAILS_ML | mails : $MAILS"
