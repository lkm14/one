/**
 *  XMLHttpRequest AJAX
 */
var xhr = null;

function getXMLHttpRequest() {
	var xhr = null;
	
	if (window.ActiveXObject) {
		try {
			xhr = new ActiveXObject("Msxml2.XMLHTTP");
			return xhr;
		} catch(e) {
			try {
				xhr = new ActiveXObject("Micorosoft.XMLHTTP");
				return xhr;
			} catch(e) {
				return null;
			}
		}
	} else if (window.XMLHttpRequest){
		try {
			xhr = new XMLHttpRequest();
			return xhr;
		} catch(e) {
			return null;
		}
	} else {
		return null;
	}
}

function sendRequest(url, params, callback, method) {
	 xhr = getXMLHttpRequest();
	 var httpMethod = method ? method : 'GET';
	 if (httpMethod != 'GET'  && httpMethod != 'get' && 
		 httpMethod != 'POST' && httpMethod != 'post') {
		 httpMethod = 'GET';
	 }
	 
	 var httpParams = (params == null || params == '') ? null : params;
	 var httpUrl = url;
	 if (httpMethod == 'GET' && httpMethod != null) {
		 httpUrl += '?' + httpParams; 
	 }
	 
	 xhr.open(httpMethod, httpUrl, true);
	 xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	 xhr.onreadystatechange = callback;
	 xhr.send((httpMethod == 'POST' || httpMethod == 'post') ? httpParams : null);
}


