#!/bin/bash

while [[ -n $(ls -A files) ]]
do filename=$(ls -A files | head -1)
first_char="${filename:0:1}"
lowercase="${first_char,}"
mv "files/$filename" "$lowercase/"
done