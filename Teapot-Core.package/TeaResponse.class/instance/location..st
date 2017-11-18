accessing
location: url
	self headerName: 'Location' value: url asString.
	^ self