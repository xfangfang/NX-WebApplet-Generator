#!/bin/sh

PROJECT_NAME="web applet"
PROJECT_AUTHOR="xfangfang"
VERSION_MAJOR="1"
VERSION_MINOR="0"
VERSION_REVISION="0"
PROJECT_ICON="./bin/default_icon.jpg" # 256x256 jpg
OUTPUT_FILE="web_applet.nro"

cd "$(dirname $0)"
pwd
mkdir -p build
rm build/${OUTPUT_FILE}
rm build/web.nacp
CURRENT_OS="macOS"

echo "Step 1"
./bin/${CURRENT_OS}/nacptool --create "${PROJECT_NAME}" "${PROJECT_AUTHOR}" \
    "${VERSION_MAJOR}.${VERSION_MINOR}.${VERSION_REVISION}" \
    "./build/web.nacp"

echo "Step 2"
./bin/${CURRENT_OS}/elf2nro "./bin/web.elf" "./build/${OUTPUT_FILE}" \
    --icon="${PROJECT_ICON}" --nacp="./build/web.nacp" --romfsdir="romfs"

echo "Create ./build/${OUTPUT_FILE}"

echo "Sending to your switch, Open hbmenu and press \"Y\"."

./bin/${CURRENT_OS}/nxlink -r 100 "./build/${OUTPUT_FILE}"

echo "done"