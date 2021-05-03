#!/bin/bash

if [ -d bin ] then
    rm -rf bin
fi

mkdir bin

cd src

ghc -imodules  Main.hs -dynamic -outputdir ../bin -o ../bin/file
