#!/bin/bash

OS=`uname -s`

if [[ $OS == "Darwin" ]]; then
	if [[ ! [ brew_loc=`type -p brew` ] -o [ -z $brew_loc] ]]; then
		echo "Please install brew"
	else
		if [[ ! [ phsntmjs_loc=`type -p brew` ] -o [ -z $phntmjs_loc] ]]; then
			echo "Installing PhantomJS"
			brew install phantomjs
		fi
	fi
elif [[ $OS == "Linux" ]]; then
	if [[ ! [ phsntmjs_loc=`type -p brew` ] -o [ -z $phntmjs_loc] ]]; then
		echo "Installing PhantomJS"
		sudo apt-get install -y phantomjs
	fi
fi

echo "Install complete"