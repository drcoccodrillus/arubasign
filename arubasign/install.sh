#!/bin/bash   

echo -------------------------------------
echo installing... 
echo -------------------------------------

#current path
SCRIPT_FOLDER=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
echo 'current script path is' "$SCRIPT_FOLDER"

#get desktop folder
DESKTOP_FOLDER=$(xdg-user-dir DESKTOP)
echo 'desktop folder is' "$DESKTOP_FOLDER"

#get os arch
MACHINE_TYPE=$(uname -m)
echo 'architecture is' $MACHINE_TYPE

#remove unused binaries
echo remove unused binaries
if [ $MACHINE_TYPE = 'x86_64' ]; then
	FILE="$SCRIPT_FOLDER/apps/RootUpdater32"
	if [ -f "$FILE" ]; then
	    rm "$FILE"
	fi
	FILE="$SCRIPT_FOLDER/apps/RootUpdater32.lap"
	if [ -f "$FILE" ]; then
	    rm "$FILE"
	fi
	FILE="$SCRIPT_FOLDER/apps/driver/libbit4xpki32.so"
	if [ -f "$FILE" ]; then
	    rm "$FILE"
	fi
	FILE="$SCRIPT_FOLDER/apps/driver/libbit4xpki32.so.conf"
	if [ -f "$FILE" ]; then
	    rm "$FILE"
	fi
	FILE="$SCRIPT_FOLDER/apps/arubasign"
	if [ -f "$FILE" ]; then
	    rm "$FILE"
	fi
	FILE="$SCRIPT_FOLDER/apps/arubasign.lap"
	if [ -f "$FILE" ]; then
	    rm "$FILE"
	fi
	FILE="$SCRIPT_FOLDER/apps/libaloader32.so"
	if [ -f "$FILE" ]; then
	    rm "$FILE"
	fi
	FILE="$SCRIPT_FOLDER/apps/arubasign64"
	if [ -f "$FILE" ]; then
		chmod +x "$SCRIPT_FOLDER/apps/arubasign64"
		chmod +x "$SCRIPT_FOLDER/apps/arubasign.bat"
	fi
	echo start moving
	FILE="$SCRIPT_FOLDER/apps/RootUpdater64"
	if [ -f "$FILE" ]; then
	    mv "$FILE" "$SCRIPT_FOLDER/apps/RootUpdater"
	fi
	FILE="$SCRIPT_FOLDER/apps/RootUpdater64.lap"
	if [ -f "$FILE" ]; then
	    mv "$FILE" "$SCRIPT_FOLDER/apps/RootUpdater.lap"
	fi
	FILE="$SCRIPT_FOLDER/apps/driver/libbit4xpki64.so"
	if [ -f "$FILE" ]; then
	    mv "$FILE" "$SCRIPT_FOLDER/apps/driver/libbit4xpki.so"
	fi
	FILE="$SCRIPT_FOLDER/apps/driver/libbit4xpki64.so.conf"
	if [ -f "$FILE" ]; then
	    mv "$FILE" "$SCRIPT_FOLDER/apps/driver/libbit4xpki.so.conf"
	fi
	FILE="$SCRIPT_FOLDER/apps/driver/libbit4xpki64.so.rc"
	if [ -d "$FILE" ]; then
	    mv "$FILE" "$SCRIPT_FOLDER/apps/driver/libbit4xpki.so.rc"
	fi
	FILE="$SCRIPT_FOLDER/apps/libaloader64.so"
	if [ -f "$FILE" ]; then
	    mv "$FILE" "$SCRIPT_FOLDER/apps/libaloader.so"
	fi

	rm -rf "$SCRIPT_FOLDER/apps/jre32"
	chmod -R 755 "$SCRIPT_FOLDER/apps/jre64/"
else
	FILE="$SCRIPT_FOLDER"/apps/RootUpdater64
	if [ -f "$FILE" ]; then
	    rm "$FILE"
	fi	
	FILE="$SCRIPT_FOLDER"/apps/driver/libbit4xpki64.so
	if [ -f "$FILE" ]; then
	    rm "$FILE"
	fi
	FILE="$SCRIPT_FOLDER"/apps/driver/libbit4xpki64.so.conf
	if [ -f "$FILE" ]; then
	    rm "$FILE"
	fi
	FILE="$SCRIPT_FOLDER"/apps/driver/libbit4xpki64.so.rc
	if [ -f "$FILE" ]; then
	    rm "$FILE"
	fi
	FILE="$SCRIPT_FOLDER/apps/arubasign64"
	if [ -f "$FILE" ]; then
	    rm "$FILE"
	fi
	FILE="$SCRIPT_FOLDER/apps/arubasign64.lap"
	if [ -f "$FILE" ]; then
	    rm "$FILE"
	fi
	FILE="$SCRIPT_FOLDER/apps/libaloader64.so"
	if [ -f "$FILE" ]; then
	    rm "$FILE"
	fi
	FILE="$SCRIPT_FOLDER"/apps/arubasign
	if [ -f "$FILE" ]; then
		chmod +x "$SCRIPT_FOLDER/apps/arubasign"
		chmod +x "$SCRIPT_FOLDER/apps/arubasign.bat"
	fi
	FILE="$SCRIPT_FOLDER/apps/RootUpdater32"
	if [ -f "$FILE" ]; then
	    mv "$FILE" "$SCRIPT_FOLDER/apps/RootUpdater"
	fi
	FILE="$SCRIPT_FOLDER/apps/RootUpdater32.lap"
	if [ -f "$FILE" ]; then
	    mv "$FILE" "$SCRIPT_FOLDER/apps/RootUpdater.lap"
	fi
	FILE="$SCRIPT_FOLDER/apps/driver/libbit4xpki32.so"
	if [ -f "$FILE" ]; then
	    mv "$FILE" "$SCRIPT_FOLDER/apps/driver/libbit4xpki.so"
	fi
	FILE="$SCRIPT_FOLDER/apps/driver/libbit4xpki32.so.conf"
	if [ -f "$FILE" ]; then
	    mv "$FILE" "$SCRIPT_FOLDER/apps/driver/libbit4xpki.so.conf"
	fi
	FILE="$SCRIPT_FOLDER/apps/libaloader32.so"
	if [ -f "$FILE" ]; then
	    mv "$FILE" "$SCRIPT_FOLDER/apps/libaloader.so"
	fi
	
	rm -rf "$SCRIPT_FOLDER/apps/jre64"
	chmod -R 755 "$SCRIPT_FOLDER/apps/jre32/"
fi

#make all other executable
echo update permissions
chmod +x "$SCRIPT_FOLDER/apps/RootUpdater"
chmod +x "$SCRIPT_FOLDER/updater/updater32"
chmod +x "$SCRIPT_FOLDER/updater/updater64"
chmod +x "$SCRIPT_FOLDER/updater/updater.sh"

echo done
