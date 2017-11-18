protocol
writeUrlEncodedTo: aTextModel
	self urlEncoded 
		ifNotEmpty: [ aTextModel text: self urlEncoded ]