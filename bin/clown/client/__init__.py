import urllib2, os, logging

def clown():
	clownd_url = "http://localhost:31415/api/repository"
	try:
		repo_url = urllib2.urlopen(clownd_url).read()
		if repo_url != "[NO REPO]":
			os.system("git clone " + repo_url)
		else:
			logging.warning("No repo was clowned. May the chrome extension not be installed?")

	except Exception as e:
		logging.critical("clownd server seems not to be running")
		logging.info("Execute clownd command to run the server (more info: <future link>)")
