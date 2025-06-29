#!/bin/bash
for manpage in ./res/amazingpacking.1; do 
  pandoc --standalone -f markdown -t man ${manpage}.md > ${manpage}
done;

cargo deb
# cargo deb --target=x86_64-unkown-linux-gnu
rm ./res/amazingpacking.1

echo "Built for debian!"
