#!/bin/bash

rm -rf bin

mkdir bin

ghc src/Main.hs -isrc/modules -dynamic -outputdir bin/out/ -o bin/Main

if [ -f bin/Main ]
then
	clear
	bin/Main
fi
