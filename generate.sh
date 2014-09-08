#!/usr/bin/env bash

# You can find installation instructions for svgtoquiz here:
# http://www.tbrk.org/software/svgtoquiz.html

rm afrika.cards

cp german.csv map.csv
svgtoquiz --no-vice-versa --match-csv --randomize --zoom=0.4 -n Afrika map.svg

sed -i.bak s/max/Max\ Hollmann/g METADATA
zip afrika.cards METADATA

## compress images
# for f in Afrika/*.png; do
#   convert -colors 256 $f $f.png && mv $f.png $f;
# done
#
# rm afrika.cards
# zip -r9 afrika.cards cards.xml Afrika METADATA

rm map.csv
rm -r cards.xml Afrika METADATA*
