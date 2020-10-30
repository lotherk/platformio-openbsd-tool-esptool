#!/bin/sh

VERSION="0.1"
ARCH=`uname -p`
OS=`uname -s | tr '[[:upper:]]' '[[:lower:]]'`

if [ ! -z $1 ]; then
    VERSION="$1"
fi

if [ ! -f "/usr/local/bin/esptool" ]; then
	echo "Please install esptool!"
	exit 1
fi

mkdir bin
ln -s /usr/local/bin/esptool bin/esptool

cat <<__EOF__ >package.json
{
    "description": "esptool",
    "name": "tool-esptool",
    "system": [
        "${OS}_${ARCH}"
    ],
	"url": "https://github.com/lotherk/platformio-openbsd-tool-esptool",
    "version": "${VERSION}"
}
__EOF__
