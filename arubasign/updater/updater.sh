#!/bin/sh
MY_PATH="`dirname \"$0\"`"
echo "$MY_PATH"
if [ `getconf LONG_BIT` = "64" ]
then
	cmd="$MY_PATH/updater64 $@"
else
    cmd="$MY_PATH/updater32 $@"
fi
echo "$cmd"
`$cmd`
