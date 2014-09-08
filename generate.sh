#!/usr/bin/env bash

# You can find installation instructions for svgtoquiz here:
# http://www.tbrk.org/software/svgtoquiz.html

cp german.csv map.csv
svgtoquiz --match-csv map.svg
rm map.csv
rm -r cards.xml map METADATA
