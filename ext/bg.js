function sendRepositoryURL(repository_url) {
	var xhr = new XMLHttpRequest();
	var params = "repository=" + encodeURIComponent(repository_url);

	xhr.onreadystatechange = function(){
		console.log(arguments);
	};

	xhr.open('POST', 'http://localhost:31415/api/repository', true);
	
	xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhr.setRequestHeader("Content-length", params.length);
	xhr.setRequestHeader("Connection", "close");


	xhr.send(params);
}

chrome.runtime.onMessage.addListener(function(request, sender, sendReponse){

	var repository_url = request.repository_url;

	sendRepositoryURL(repository_url);

});