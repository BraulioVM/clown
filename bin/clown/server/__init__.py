from flask import Flask, request
app = Flask("Clownd server")

repository = "[NO REPO]"

def url_is_safe(url):
	return url.find(";") == -1 and url.find("&") == -1


@app.route("/api/repository", methods=["GET", "POST"])
def repository_route():
	global repository
	
	if request.method == "POST":
		repository_url = request.form["repository"]
		
		if url_is_safe(repository_url):	# Avoid code injection
			repository = repository_url


	return repository



def init():
	app.run(debug=True, port=31415)
