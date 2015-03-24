window.addEventListener("load", function(){

	function getGoImportTag(){
		return document.querySelector("meta[name='go-import']");
	}

	function isRepository() {
		
		return getGoImportTag() ? true : false;
	}

	function getRepositoryURL() {
		var import_tag = getGoImportTag();
		var tag_content = import_tag.getAttribute("content");

		return "https://" + tag_content.split(" ")[0];
	}

	

	if ( isRepository() ) {
		chrome.runtime.sendMessage({ repository_url : getRepositoryURL() });
	}


});