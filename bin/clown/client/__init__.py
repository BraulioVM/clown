import urllib2, os

def clown():
	clownd_url = "http://localhost:31415/api/repository"
	repo_url = urllib2.urlopen(clownd_url).read()

	if repo_url != "[NO REPO]":
		os.system("git clone " + repo_url)
