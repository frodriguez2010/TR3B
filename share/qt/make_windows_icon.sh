#!/bin/bash
# create multiresolution windows icon
ICON_DST=../../src/qt/res/icons/MANTA.ico

convert ../../src/qt/res/icons/TR3B-16.png ../../src/qt/res/icons/TR3B-32.png ../../src/qt/res/icons/TR3B-48.png ${ICON_DST}
