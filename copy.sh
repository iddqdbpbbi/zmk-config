#!/bin/bash
mv ~/Downloads/firmware.zip  ./artifacts
unzip -d ./artifacts/ ./artifacts/firmware.zip  
rm ~/project/keyboards/qdkbd/zmk-config/artifacts/firmware.zip
udiskie-mount -a
if [ -f ./artifacts/qdkbd_left-nice_nano_v2-zmk.uf2 ]; then
    mv ./artifacts/qdkbd_left-nice_nano_v2-zmk.uf2 /media/qd/NICENANO
    echo Copy left
elif [ -f ./artifacts/qdkbd_right-nice_nano_v2-zmk.uf2 ]; then
    mv ./artifacts/qdkbd_right-nice_nano_v2-zmk.uf2 /media/qd/NICENANO
    echo Copy right    
else
    echo Nothing to copy
fi 
