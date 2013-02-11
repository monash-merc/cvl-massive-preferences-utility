#!/bin/bash

set -x

VERSION=$1

rm -fr massive-preferences
mkdir massive-preferences
mkdir massive-preferences/bin
mkdir massive-preferences/lib

cp massivePreferencesApplet.py massive-preferences/bin/
cp MASSIVElogoTransparent32x32.xpm massivePreferencesApplet.server massive-preferences/lib
touch massive-preferences/readme.txt
cd massive-preferences/lib
sed -i "s/CVLMASSIVEPREFERENCESVERSION/${VERSION}/g" massivePreferencesApplet.server 
cd -

tar zcvf massive-preferences-${VERSION}.tar.gz massive-preferences
rm -fr massive-preferences

