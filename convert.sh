#!/bin/bash
mkdir hist_utf8
mkdir demo_utf8
mkdir drugs_utf8
mkdir reac_utf8

for FILE in hist/*; do
  if [ "${FILE: -4}" == ".csv" ]
  then
    echo Converting $FILE;
    FILE="${FILE: 5}"
    iconv -f SHIFT-JIS -t UTF-8 hist/$FILE > hist_utf8/$FILE
  fi
done

for FILE in demo/*; do
  if [ "${FILE: -4}" == ".csv" ]
  then
    echo Converting $FILE;
    FILE="${FILE: 5}"
    iconv -f SHIFT-JIS -t UTF-8 demo/$FILE > demo_utf8/$FILE
  fi
done

for FILE in drugs/*; do
  if [ "${FILE: -4}" == ".csv" ]
  then
    echo Converting $FILE;
    FILE="${FILE: 6}"
    iconv -f SHIFT-JIS -t UTF-8 drugs/$FILE > drugs_utf8/$FILE
  fi
done

for FILE in reac/*; do
  if [ "${FILE: -4}" == ".csv" ]
  then
    echo Converting $FILE;
    FILE="${FILE: 5}"
    iconv -f SHIFT-JIS -t UTF-8 reac/$FILE > reac_utf8/$FILE
  fi
done
echo "DONE"