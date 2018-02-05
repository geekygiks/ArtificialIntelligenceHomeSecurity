#!/bin/bash
a=1
while [ $a -lt 10 ]
do
  find image1/croppedimage.jpg -size 0 -exec rm -f {} \;
  l=$(find image1/ -cmin -2 | wc -l)

  if [ $l -eq 0 ]
  then
    rm image1/croppedimage.jpg
    nohup scripts/capture_module/dist/capture_module/capture_module > tmp/capture &
    sleep 2
  fi

  l1=$(find sendemail/ -cmin -3 | wc -l)
  if [ $l1 -gt 12 ]
  then
    rm sendemail/*.jpg
    sleep 2
  fi 

  sleep 3
done
