#!/bin/bash

BEGIN=$(date +%s)
BACK="\b\b\b\b"


echo Starting Stopwatch...

while true; do
        NOW=$(date +%s)
        DIFF=$(($NOW - $BEGIN))
        MINS=$(($DIFF/60))
        SECS=$(($DIFF % 60))

#only echo count if its different than the last time
if [ "$DIFF" != "$OLDDIFF" ]
then
        #backspace 4 times to reset stopwatch position
        #The '-e' enables \b to be interpreted correctly
        #The '-n' avoids the newline character at the end
        echo -ne $BACK
        echo -ne $MINS:`printf %02d $SECS`
fi

#define olddiff to current diff
OLDDIFF=DIFF

done
