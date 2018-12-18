#!/usr/bin/env bash

if [[ -d "$(pwd)/template.sh" ]]; then
	echo 'Please remove "template.sh" directory from current directory then rerun the command.'
elif [[ -e "$(pwd)/template.sh" ]]; then
	echo 'Please remove "template.sh" from current directory then rerun the command.'
else
	git clone git@github.com:nejdetckenobi/template.sh.git && cd template.sh && bash install.sh && cd ..  && rm -rf template.sh
fi

