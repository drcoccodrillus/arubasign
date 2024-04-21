#!/bin/sh
MY_PATH="`dirname \"$0\"`"
echo "$MY_PATH"
if [ `getconf LONG_BIT` = "64" ]
then
	cmd="$MY_PATH/arubasign64 $@"
else
	cmd="$MY_PATH/arubasign $@"
fi
echo "$cmd"
`$cmd`
