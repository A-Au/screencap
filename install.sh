#!/bin/bash

OS=`uname -s`

if [[ $OS == "Darwin" ]]; then
	if [[ -z `type -p brew` ]]; then
		echo "Please install brew"
	else
		if [[ -z `type -p brew` ]]; then
			echo "Installing PhantomJS"
			brew install phantomjs
		fi
	fi
elif [[ $OS == "Linux" ]]; then
	if [[ -z `type -p brew` ]]; then
		echo "Installing PhantomJS"
		sudo apt-get install -y phantomjs
	fi
fi
cur_dir=`pwd`
sudo ln -s $cur_dir'/screencap' '/usr/local/bin/screencap'
echo "Install complete"