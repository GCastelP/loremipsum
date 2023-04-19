#!/bin/bash

for i in {1..5}
do
    curl -s https://www.lipsum.com/feed/json | jq -r '.feed.lipsum' | sed 's/<[^>]\+>//g' | head -c 500 > "lipsum$i.txt"
done
