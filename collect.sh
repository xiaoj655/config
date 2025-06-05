#!/bin/env bash

backup_files=("$HOME/.bashrc" "$HOME/.tmux.conf" "$HOME/.config/nvim" "$HOME/.config/starship.toml" "$HOME/.config/zellij")
for i in ${backup_files[@]}; do
	if [[ ! -e $i ]];
	then
		echo "$i not exist, check it!"
		continue
	fi

	if [[ -f $i ]];
	then
		cp $i .
	else
		cp -r $i .
	fi
done

