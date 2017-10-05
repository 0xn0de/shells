#!/bin/bash

for file in *
   do
     ext="${file##*.}";
     md5=$(echo -n "$file" | md5sum);
     echo -- "${md5%% *}.${ext}";
     ##mv "$file" -- "${md5%% *}.${ext}";
done

