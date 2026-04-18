#!/bin/bash


argumento=$1

if [ -z "$argumento" ]; then

   argumento="Que me gusta la bash!!!!"

fi

rm -rf foo/
mkdir -p foo/dummy foo/empty
echo "$argumento" > foo/dummy/file1.txt
touch foo/dummy/file2.txt
cat foo/dummy/file1.txt > foo/dummy/file2.txt
mv foo/dummy/file2.txt foo/empty/file2.txt
