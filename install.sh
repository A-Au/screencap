#!/bin/bash

OS=`uname -s`

if [[ $OS == "Darwin" ]]; then
	if [[ -z `type -p brew` ]]; then
		echo "Please install brew"
	else
		if [[ -z `type -p phantomjs` ]]; then
			echo "Installing PhantomJS"
			brew install phantomjs
		else
			echo "PhantomJS already installed"
		fi
	fi
elif [[ $OS == "Linux" ]]; then
	echo "Installing PhantomJS"
	sudo apt-get install -y phantomjs
fi

cur_dir=`pwd`
sudo ln -s $cur_dir'/screencap' '/usr/local/bin/screencap'
echo "Install complete"