zn delegate
handleRequest: aZnRequest
	^ delegate 
		ifNil: [ ZnResponse notFound: aZnRequest uri  ] 
		ifNotNil: [ delegate handleRequest: aZnRequest ]