#!/bin/bash

FILE="input.txt"

TEMP="temp.txt"

line_num=0

while IFS= read -r line; do
  line_num=$((line_num + 1))

  if [ $line_num -lt 5 ]; then

    echo "$line"
  else
    if [[ "$line" == *welcome* ]]; then

      echo "${line//give/learning}"
    else

      echo "$line"
    fi
  fi
done < "$FILE" > "$TEMP"


mv "$TEMP" "$FILE"
ubuntu@ip-172-31-91-255:~/Scripting-Task/scripting$
