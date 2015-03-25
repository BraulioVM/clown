from flask import Flask, request
app = Flask("Clownd server")

repository = "[NO REPO]"

@app.route("/api/repository", methods=["GET", "POST"])
def repository_route():
	global repository
	
	if request.method == "POST":
		print request.form
		repository = request.form["repository"]


	return repository



def init():
	app.run(debug=True, port=31415)
