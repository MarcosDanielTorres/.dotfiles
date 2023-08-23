#!/bin/bash

folders=$(ls -d */)

for f in $folders; do
	echo "Stowing $f ..."
	stow $f
done
