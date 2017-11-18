private
znEntity: aZnEntity code: anInteger headers: aDictionary
	| headers |
	headers := ZnHeaders defaultResponseHeaders.
	headers addAll: aDictionary.
	^ ZnResponse new
		statusLine: (ZnStatusLine code: anInteger);
		headers: headers;
		entity: aZnEntity;
		yourself