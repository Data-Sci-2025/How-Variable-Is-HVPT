#!/usr/bin/env bash

for i in sound-files/*.mp3 ; do ffmpeg -i $i ${i%.*}.wav ; done