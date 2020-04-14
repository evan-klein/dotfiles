#!/bin/sh

mkdir ~/Diff/

for filename in master new before after; do
	mkdir ~/Diff/$filename/
	for file_extension in php js css html txt; do
		touch ~/Diff/$filename.$file_extension
	done
done
