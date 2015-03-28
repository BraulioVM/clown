Clown
======
> Fastest and easiest way to clone repositories ever.

Your omnibox looks something like this:
![1](http://i59.tinypic.com/29fw1vq.png "Chrome bar") (that green and red icon is clown)

Open a terminal and execute ````clown````: **BOOM!** The repository is already getting cloned.

## How it works
Clown runs a web server on port 31415 of your computer so that the chrome extension can communicate to it the repositories you visit. When you execute the clown command, it gets the repository url from the local web server and executes `git clone` on that url.

## Installation
* Install the server
````sh
git clone https://github.com/BraulioVM/clown
cd clown
sudo make install # And follow the instructions
````

* Install the [chrome extension](https://chrome.google.com/webstore/detail/clown/nnjfecpobaodofjecffplbpcjohaffjk)

**Done**

## Any trouble?
Just write an issue, I'll fix it ASAP :squirrel:
