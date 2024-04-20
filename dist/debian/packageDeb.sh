#!/bin/bash
for manpage in ./res/amazingpacking.1; do 
  pandoc --standalone -f markdown -t man ${manpage}.md > ${manpage}
done;

cargo deb
# cargo deb --target=x85_64-unkown-linux-gnu
rm ./res/amazingpacking.1

echo "Build for debian!"
