#!/bin/bash

HERE=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

function install_binary {
	mkdir -p $HOME/.clown
	cp $HERE/resources/clown.py $HOME/.clown/
	chmod +x $HOME/.clown/clown.py
}

function install_to_chrome {
	CHROME_DIRECTORY=$1

	mkdir -p NativeMessagingHosts
	cp $HERE/resources/com.clown.listener.json $CHROME_DIRECTORY/NativeMessagingHosts/
}

function generate_native_host_manifest {
	echo "{
	  \"name\": \"com.clown.listener\",
	  \"description\": \"Clown Listener\",
	  \"path\": \"$HOME/.clown/clown.py\",
	  \"type\": \"stdio\",
	  \"allowed_origins\": [
	    \"chrome-extension://ommeighdhjbohjmhboaemggcgoccfmml/\"
	  ]
	}" > $HERE/resources/com.clown.listener.json
}




install_binary
generate_native_host_manifest

if [ -d "$HOME/.config/google-chrome" ]; then
	CHROME_DIRECTORY="$HOME/.config/google-chrome"
	install_to_chrome $CHROME_DIRECTORY
fi

