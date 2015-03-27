Clown
======
> Fastest and easiest way to clone repositories ever.

You're omnibox looks something like this:
![alt text](http://i59.tinypic.com/29fw1vq.png "Chrome bar") (that green and red icon is clown)

Open a terminal and execute ````clown````: **BOOM!** The repository is already getting cloned.

## Installation
Install the server and add it to crontab
````sh
git clone https://github.com/BraulioVM/clown
cd clown/bin
sudo python setup.py install
crontab -e  # And add the rule '@reboot /usr/local/bin/clownd' 
````

Install the [chrome extension](https://chrome.google.com/webstore/detail/clown/nnjfecpobaodofjecffplbpcjohaffjk)

Done
