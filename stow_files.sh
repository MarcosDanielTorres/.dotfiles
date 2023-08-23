#!/bin/bash

# all but zsh, there is a problem with the way I'm unstowing the zshrc that conflicts with the installation of oh-my-zsh
folders=$(ls -d */)

for f in $folders; do
	echo "Stowing $f ..."
	stow $f
done
