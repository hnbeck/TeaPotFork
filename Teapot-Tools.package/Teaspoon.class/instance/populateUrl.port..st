private
populateUrl: urlString port: portNumber
	| pathSegment |
	pathSegment := urlString.
	(pathSegment beginsWith: '/') 
		ifFalse: [ pathSegment := '/', pathSegment ].	
	urlInput text: ('http://localhost:', portNumber asString, pathSegment)